<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class CartridgeController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function insertCartridge() {
    	return view('cartridge.insert');
    }

    public function newcartridge(Request $request) {

    	return $request->all();

    }

}
