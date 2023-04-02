<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\User\UserAuthController;

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


Route::controller(UserAuthController::class)->group(function (){
    Route::post('login','login');
    Route::post('register','register');

    Route::middleware('auth:user-api')->group(function () {
        Route::post('logout','logout');
        Route::get('me','user');
    });
});



