<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class dvUserRole extends Model
{
    protected $table = 'dv_users_roles';
    protected $fillable = ['role_id'];

    /** @use HasFactory<\Database\Factories\DvUserRoleFactory> */
    use HasFactory;
}
