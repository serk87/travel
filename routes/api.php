<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ApiUsersController;
use App\Http\Controllers\API\ApiAttactionController;
use App\Http\Controllers\API\ApiAditionController;
use App\Http\Controllers\API\ProfileController;
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

Route::delete('logout', [API\ApiUsersController::class, 'logout'])->middleware('auth:api');
Route::get('attractions', [API\ApiAttactionController::class, 'getattractions'])->name('api.getattractions');

Route::get('populate', [API\ApiAditionController::class, 'getpopulate'])->name('api.populate');
Route::get('recommendations', [API\ApiAditionController::class, 'getrecommendations'])->name('api.recommendations');
Route::get('search', [API\ApiAditionController::class, 'getsearch'])->name('api.search');
Route::get('attraction', [API\ApiAditionController::class, 'getattraction'])->name('api.attraction');

Route::get('rating', [API\ApiAditionController::class, 'getrating'])->name('api.rating');
Route::post('rating', [API\ApiAditionController::class, 'setrating'])->name('api.setrating');


Route::get('profile', [API\ProfileController::class, 'getprofile'])->middleware('auth:api');
Route::patch('profile', [API\ProfileController::class, 'editprofile'])->middleware('auth:api');
Route::post('profile', [API\ProfileController::class, 'photoprofile'])->middleware('auth:api');

Route::get('visit', [API\ProfileController::class, 'getvisit'])->middleware('auth:api');
Route::post('visit', [API\ProfileController::class, 'setvisit'])->middleware('auth:api');

Route::get('ar', [API\ApiAditionController::class, 'getar']);
Route::get('sound', [API\ApiAditionController::class, 'getsound']);