<?php

namespace App\Http\Controllers\Developer;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\ApiClient;

class ClientsController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index() {
        if (in_array('root', Auth::user()->getRoleNames()->toArray())) {
        $clients = ApiClient::get();
        } else if (in_array('developer', Auth::user()->getRoleNames()->toArray())) {
            $clients = ApiClient::where('user_id', Auth::user()->id)->get();
        }

        return view('developer.clients.index',[
            'title' => 'Клиенты OAuth2',
            'clients' => $clients
        ]);
    }

    public function docs() {

        return view('developer.clients.api',[
            'title' => 'Документация API',
        ]);
    }
}
