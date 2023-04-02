<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Http\Resources\User\AuthResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;
use App\Models\User;
class AuthController extends Controller
{
    /*
     *
    */
    public  function register(RegisterRequest $request){
        $user = User::create([
            'phone'=>$request->phone,
            'email'=>$request->email,
            'name'=>$request->name,
            'password'=>Hash::make($request->password),
        ]);
        return $this->makeToken($user);
    }

    public  function  login(LoginRequest $request){
        $user = User::where('phone', $request->phone)->first();

        if (! $user || ! Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }
        return $this->makeToken($user);

    }

    public  function logout(Request $request){
        $request->user()->tokens()->delete();
        return sendMessage("User Logout !",true,200);
    }

    public function user(Request $request){
        return AuthResource::make($request->user());
    }

    private  function makeToken($user){

        $token = $user->createToken('user-token')->plainTextToken;

        return (new AuthResource($user))
            ->additional(['meta'=>[
                'token'=>$token,
                'token_type'=>'Bearer',
            ]]);
    }
}
