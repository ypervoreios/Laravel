<?php

use App\Http\Controllers\dvUsersController;
use App\Http\Controllers\loginController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('login');
});

Route::redirect('/login', '/login')->name('login');

// Public routes
Route::get('/login', [loginController::class, 'show'])->name('login.show');
Route::post('/login', [loginController::class, 'store'])->name('login.store');

// Protected routes (require authentication)
Route::middleware('auth')->group(function () {
    Route::post('/logout', [loginController::class, 'logout'])->name('logout');
    Route::get('/users', [dvUsersController::class, 'index'])->name('users.index');
    Route::get('/users/create', [dvUsersController::class, 'create'])->name('users.create');
    Route::post('/users', [dvUsersController::class, 'store'])->name('users.store');
    Route::get('/users/{id}', [dvUsersController::class, 'show'])->name('users.show');
    Route::delete('/users/{id}', [dvUsersController::class, 'destroy'])->name('users.destroy');
});
