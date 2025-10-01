<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Psy\VarDumper\Dumper;
use App\Models\DvUsersRoles;
use App\Models\DvUsers;

class DvUserRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $users = DvUsers::all();        
        $roles = DvUsersRoles::all();

        foreach ($users as $user) {
           
            $randomRoles = $roles->random(rand(1, min(3, $roles->count())));

            foreach ($randomRoles as $role) {
                
                DB::table('dv_user_role')->insert([
                    'user_id' => $user->id,
                    'role_id' => $role->id,
                ]);
            }
        }
    }
}
