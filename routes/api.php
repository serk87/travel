<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ApiUsersController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::post('v1/user-register', 'API\TestController@register');

Route::post('register', [API\ApiUsersController::class, 'register'])->name('api.register');

    Route::delete('logout', [API\ApiUsersController::class, 'logout'])->name('api.logout')->middleware('auth:api');
