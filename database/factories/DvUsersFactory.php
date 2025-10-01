<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\dvUsers>
 */
class DvUsersFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $plainPassword = fake()->password(6, 8);

        return [
            'name' => fake()->name(),
            'username' => fake()->userName(),
            'password' => bcrypt($plainPassword),
            'email' => fake()->email()
        ];
    }
}
