<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Attraction;

class ApiAttactionController extends Controller
{
    public function getattraction() {
        try {
            $attraction = Attraction::get();
            return response()->json($attraction, 200);
        } catch(Error $error) {
            return  response()->json(['error'=>$error], 200, $headers);
        }
    }
}
