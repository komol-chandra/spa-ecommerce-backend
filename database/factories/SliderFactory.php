<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Slider>
 */
class SliderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "name"=>$this->faker->name(),
            "slug"=>$this->faker->unique()->slug(),
            "image"=>$this->faker->imageUrl('1440','450'),
            "is_active"=>$this->faker->randomNumber(['0','1']),
        ];
    }
}
