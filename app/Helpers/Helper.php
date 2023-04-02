<?php
use Carbon\Carbon;

if (!function_exists('sendMessage')) {
    function sendMessage($message,$status,$code)
    {
        $response = [
            'status'=>$status,
            'message'=>$message,
        ];
        return response()->json($response,$code);
    }
}
