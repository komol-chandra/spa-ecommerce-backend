<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\Seller;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class SellersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Seller::create([
            'name' => 'Komol Chandra Devnath',
            'email' => 'admin@gmail.com',
            'phone' => '01874303467',
            'email_verified_at' => now(),
            'password' => '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', // password
            'remember_token' => Str::random(10),
        ]);
    }
}
