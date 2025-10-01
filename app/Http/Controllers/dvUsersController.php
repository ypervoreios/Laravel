<?php

namespace App\Http\Controllers;

use App\Models\dvUsers;
use App\Models\dvUsersRoles;
use Illuminate\Http\Request;

class dvUsersController extends Controller
{
    public function index() {
        $users = dvUsers::orderBy('created_at', 'desc')->paginate(10);;

        return view('users.index', ["users" => $users]);
    }

    public function create(){
    $roles = dvUsersRoles::all();

        return view('users.create', ["roles" => $roles]);
    }

    public function show($id)
    {
    $user = dvUsers::findOrFail($id);
    return view('users.show', ['user' => $user]);
    }

    public function store(Request $request){
        $request->validate([
            'name' => 'required',
            'username' => 'required|unique:dv_users,username',
            'email' => 'required|email|unique:dv_users,email',
            'password' => 'required|min:6',
            'roles' => 'required|array',
            'roles.*' => 'exists:dv_users_roles,id'
        ]);

        $user = new dvUsers();
        $user->name = strip_tags($request->input('name'));
        $user->username = strip_tags($request->input('username'));
        $user->email = strip_tags($request->input('email'));
        $user->password = strip_tags(bcrypt($request->input('password')));
        $user->save();
        $user->roles()->attach($request->input('roles'));

        return redirect()->route('users.index')->with('success', 'User created successfully.');
    }

    public function destroy($id)
    {
        $user = dvUsers::findOrFail($id);
        $user->roles()->detach(); // Αποσύνδεση όλων των ρόλων πριν τη διαγραφή
        $user->delete();

        return redirect()->route('users.index')->with('success', 'User deleted successfully.');
    }

}
