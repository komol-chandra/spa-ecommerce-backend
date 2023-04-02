<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\AdminLoginRequest;
use App\Http\Requests\AdminRegisterRequest;
use App\Http\Requests\LoginRequest;
use App\Http\Resources\Admin\AdminAuthResource;
use App\Http\Resources\User\AuthResource;
use App\Models\Admin;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AdminAuthController extends Controller
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

    public  function  login(AdminLoginRequest $request){
        $admin = Admin::where('phone', $request->phone)->first();

        if (! $admin || ! Hash::check($request->password, $admin->password)) {
            throw ValidationException::withMessages([
                'phone' => ['The provided credentials are incorrect.'],
            ]);
        }
        return $this->makeToken($admin);

    }

    public  function logout(Request $request){
        $request->user()->tokens()->delete();
        return sendMessage("Admin Logout !",true,200);
    }

    public function user(Request $request){
        return AdminAuthResource::make($request->user());
    }

    private  function makeToken($admin){

        $token = $admin->createToken('admin-token')->plainTextToken;

        return (new AdminAuthResource($admin))
            ->additional(['meta'=>[
                'token'=>$token,
                'token_type'=>'Bearer',
            ]]);
    }
}
