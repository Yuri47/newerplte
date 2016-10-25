<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Redirect;
use App\Cash;
use App\RetireCash;

class CashController extends Controller
{
    //
     public function __construct()
    {
        $this->middleware('auth');
    }

	public function cash() {

	




		return view('cash.cash');
	}


}
