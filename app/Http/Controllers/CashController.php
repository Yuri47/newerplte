<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Redirect;
use App\Cash;
use App\RetireCash;
use Carbon\Carbon;
 

class CashController extends Controller
{
    //
     public function __construct()
    {
        $this->middleware('auth');
    }

	public function cash() {

	
		$cash =  DB::table('cashes') 
                    ->whereBetween('created_at', ['2016-10-26', Carbon::now()])->get();
        $totalCash =  DB::table('cashes')
                    ->whereBetween('created_at', [Carbon::now()->toDateString(), Carbon::now()])->sum('price');
                     



        $retireCash = DB::table('retire_cashes')
                    ->whereBetween('created_at', [Carbon::now()->toDateString(), Carbon::now()])->get();
        $totalRetireCash = DB::table('retire_cashes')
                    ->whereBetween('created_at', [Carbon::now()->toDateString(), Carbon::now()])->sum('price');





          $retire = DB::table('retire_cashes')
                    ->whereBetween('created_at', [Carbon::now()->toDateString(), Carbon::now()]); 

          $allData = DB::table('cashes')
                    ->whereBetween('created_at', [Carbon::now()->toDateString(), Carbon::now()])
                    ->union($retire)
                    ->orderBy('created_at', 'asc')
                    ->get();          

        


        //$t = $retireCash->sum('price');            
        $totalCashDay = $totalCash - $totalRetireCash;          


                   // return $totalCash - $totalRetireCash;
 
		 return view('cash.cash', ['allData' => $allData, 'totalCashDay' => $totalCashDay,]);
	}


}
