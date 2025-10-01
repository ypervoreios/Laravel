<?php

namespace Database\Seeders;

use App\Models\dvUsersRoles;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DvUsersRolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $roles = ['admin', 'editor', 'viewer', 'contributor', 'moderator'];
        foreach ($roles as $role) {
            dvUsersRoles::firstOrCreate(['name' => $role]);
        }
    }
}
