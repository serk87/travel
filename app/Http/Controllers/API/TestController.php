<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TestController extends Controller
{

     /**
 * @OA\Get(
 *     path="/api/register",
 *     description="Home page",
 *     @OA\Response(response="default", description="Welcome page")
 * )
 */
    
    public function register()
    {
       
    }
}
