<?php

use App\Http\Controllers\dvUsersController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('homepage');
});

// Route::get('/login', function() {
//     return view('login');
// });


Route::get('/users/create', [dvUsersController::class, 'create'])->name('users.create');
Route::post('/users', [dvUsersController::class, 'store'])->name('users.store');
Route::get('/users/{id}', [dvUsersController::class, 'show'])->name('users.show');
Route::get('/users', [dvUsersController::class, 'index'])->name('users.index');
Route::delete('/users/{id}', [dvUsersController::class, 'destroy'])->name('users.delete');