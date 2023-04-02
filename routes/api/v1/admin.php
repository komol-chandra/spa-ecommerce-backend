<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\Admin\AdminAuthController;
use App\Http\Controllers\Api\Admin\BrandController;
use App\Http\Controllers\Api\Admin\CategoryController;
use App\Http\Controllers\Api\Admin\SubCategoryController;
use App\Http\Controllers\Api\Admin\SliderController;
use App\Http\Controllers\Api\Admin\DivisionController;
use App\Http\Controllers\Api\Admin\ProductController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
//
//
Route::controller(AdminAuthController::class)->group(function (){
    Route::post('login','login');
    Route::middleware('auth:admin-api')->group(function () {
        Route::post('logout','logout');
        Route::get('me','user');
    });
});

Route::middleware('auth:admin-api')->group(function () {
    Route::apiResources([
        'brand' => BrandController::class,
        'category' => CategoryController::class,
        'sub-category' => SubCategoryController::class,
        'product' => ProductController::class,
        'division' => DivisionController::class,
        'slider' => SliderController::class,
    ]);
});






