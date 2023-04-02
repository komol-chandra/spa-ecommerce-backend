<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Seller>
 */
class SellerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [

            'name' => fake()->name(),
            'email' => fake()->unique()->safeEmail(),
            'phone' => fake()->unique()->phoneNumber(),
            'image' => fake()->imageUrl(350,350),
            'banner' => fake()->imageUrl(450,250),
            'shop_name' => fake()->name(),
            'address' => fake()->address(),
            'is_verified' => fake()->numberBetween(0,1),
            'email_verified_at' => now(),
            'password' => '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', // password
            'remember_token' => Str::random(10),
        ];
    }
}
