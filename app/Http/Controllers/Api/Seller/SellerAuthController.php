<?php

namespace App\Http\Controllers\Api\Seller;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRegisterRequest;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Http\Requests\Seller\SellerLoginRequest;
use App\Http\Resources\Admin\AdminAuthResource;
use App\Http\Resources\Seller\SellerAuthResource;
use App\Http\Resources\User\AuthResource;
use App\Models\Admin;
use App\Models\Seller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class SellerAuthController extends Controller
{
    /*
    *
   */
    public  function register(AdminRegisterRequest $request){
        $user = User::create([
            'phone'=>$request->phone,
            'email'=>$request->email,
            'name'=>$request->name,
            'password'=>Hash::make($request->password),
        ]);
        return $this->makeToken($user);
    }

    public  function  login(SellerLoginRequest $request){
        $seller = Seller::where('phone', $request->phone)->first();

        if (! $seller || ! Hash::check($request->password, $seller->password)) {
            throw ValidationException::withMessages([
                'phone' => ['The provided credentials are incorrect.'],
            ]);
        }
        return $this->makeToken($seller);

    }

    public  function logout(Request $request){
        $request->user()->tokens()->delete();
        return sendMessage("Seller Logout !",true,200);
    }

    public function seller(Request $request){
        return SellerAuthResource::make($request->user());
    }

    private  function makeToken($seller){

        $token = $seller->createToken('seller-token')->plainTextToken;
        return (new SellerAuthResource($seller))
            ->additional(['meta'=>[
                'token'=>$token,
                'token_type'=>'Bearer',
            ]]);
    }
}
