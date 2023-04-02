<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\Seller;
use App\Models\Slider;
use App\Models\SubCategory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            DivisionSeeder::class,
            DistrictSeeder::class,
            UsersTableSeeder::class,
            AdminsTableSeeder::class,
            SellersTableSeeder::class,
        ]);
        Slider::factory(10)->create();
        Seller::factory(10)->create();
        Brand::factory(10)->create();
        Category::factory(10)->create();
        SubCategory::factory(30)->create();
        Product::factory(100)->create();
    }
}
