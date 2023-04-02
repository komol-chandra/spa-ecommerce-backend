<?php

namespace Database\Factories;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Seller;
use App\Models\SubCategory;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $multiImage= [
            $this->faker->imageUrl('350','350'),
            $this->faker->imageUrl('350','350'),
            $this->faker->imageUrl('350','350')
        ];
        return [
            "seller_id"=>$this->faker->randomElement(Seller::pluck('id')->toArray()),
            "brand_id"=>$this->faker->randomElement(Brand::pluck('id')->toArray()),
            "category_id"=>$this->faker->randomElement(Category::pluck('id')->toArray()),
            "sub_category_id"=>$this->faker->randomElement(SubCategory::pluck('id')->toArray()),
            "name"=>$this->faker->name(),
            "slug"=>$this->faker->unique()->slug(),
            "thumbnail"=>$this->faker->imageUrl('350','350'),
            "images"=>$this->faker->randomElement($multiImage),
            "price"=>$this->faker->numberBetween(500,50000),
            "discount"=>$this->faker->numberBetween(1,99),
            "stock"=>$this->faker->numberBetween(100,300),
            "is_sale"=>$this->faker->numberBetween(0,1),
            "added_by"=>$this->faker->randomElement(["admin","seller"]),
            "condition"=>$this->faker->randomElement(["new","popular","feature","winter"]),
            "is_active"=>$this->faker->numberBetween(0,1),
        ];
    }
}
