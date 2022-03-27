<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Developer\DashboardController;
use App\Http\Controllers\Developer\ClientsController;
use App\Http\Controllers\Developer\MapsController;
use App\Http\Controllers\Developer\AttractionController;
use App\Http\Controllers\UsersController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes(['register' => false]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::group(['middleware' => ['role:root|developer', 'web']], function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/weather', [DashboardController::class, 'weather'])->name('weather');
    Route::get('/apiclients', [ClientsController::class, 'index'])->name('apiclients');
    Route::get('/apidocs', [ClientsController::class, 'docs'])->name('apidocs');
    Route::get('/maps', [MapsController::class, 'index'])->name('maps');
    Route::get('/geo', [MapsController::class, 'geo'])->name('geo');
    Route::get('/route', [MapsController::class, 'route'])->name('route');
    Route::get('/overpass', [MapsController::class, 'overpass'])->name('overpass');

    Route::resource('attractions', AttractionController::class);
    Route::resource('users', UsersController::class);
    

});
