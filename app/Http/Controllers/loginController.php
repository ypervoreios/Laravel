<?php

namespace App\Http\Controllers;

use App\Models\dvUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class loginController extends Controller
{
    public function show()
    {
        return view('login');
    }

    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required|string',
            'password' => 'required|string|min:6',
        ]);

        $user = dvUsers::where('username', $request->input('username'))->first();

        if ($user && password_verify($request->input('password'), $user->password)) {
            Auth::login($user);
            return redirect()->route('users.index')->with('success', 'Login successful!');
        }

        return back()->withErrors(['username' => 'Invalid credentials.']);
    }

    public function logout()
    {
        Auth::logout();
        request()->session()->invalidate();
        request()->session()->regenerateToken();
        return redirect('/')->with('success', 'Logged out successfully!');
    }
}
