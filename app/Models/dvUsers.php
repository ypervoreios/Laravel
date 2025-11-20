<?php

namespace App\Models;

use Illuminate\Container\Attributes\Auth;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class dvUsers extends Authenticatable
{
    protected $fillable = ['name', 'username', 'email', 'password'];
    /** @use HasFactory<\Database\Factories\DvUsersFactory> */
    use HasFactory;

    public function roles()
    {
        return $this->belongsToMany(dvUsersRoles::class, 'dv_user_role', 'user_id', 'role_id');
    }
}
