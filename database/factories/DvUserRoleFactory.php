<?php

namespace Database\Factories;

use App;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\dvUsers;
use App\Models\dvUsersRoles;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\dvUserRole>
 */
class DvUserRoleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => dvUsers::inRandomOrder()->first()->id,
            'role_id' => dvUsersRoles::inRandomOrder()->first()->id,
        ];
    }
}
