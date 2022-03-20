<?php

namespace App\Http\Controllers\Developer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MapsController extends Controller
{
    public function index() {
        return view('developer.maps.index',[
            'title' => 'Документация Tile Сервера'
        ]);
    }

    public function geo() {
        return view('developer.maps.geo',[
            'title' => 'Документация Сервера Геокодирования'
        ]);
    }

    public function route() {
        return view('developer.maps.route',[
            'title' => 'Документация Сервера построения маршрутов'
        ]);
    }
    
    public function overpass() {
        return view('developer.maps.overpass',[
            'title' => 'Документация Сервера альтернативы Api OpenstreetMap'
        ]);
    }
}
