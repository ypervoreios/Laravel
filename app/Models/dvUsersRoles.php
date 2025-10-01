<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class dvUsersRoles extends Model
{
    /** @use HasFactory<\Database\Factories\DvUsersRolesFactory> */
    use HasFactory;

    protected $fillable = ['name'];

    public function users()
    {
        return $this->belongsToMany(dvUsers::class, 'dv_user_role', 'role_id', 'user_id');
    }
}
