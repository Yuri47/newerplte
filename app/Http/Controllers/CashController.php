<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Redirect;
use App\Cash;
use App\RetireCash;
use Carbon\Carbon;
use Validator;
 

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

        $money = DB::table('cashes')
                    ->where('type', 'money') 
                    ->whereBetween('created_at', [Carbon::now()->toDateString(), Carbon::now()])
                    ->sum('price');

        $debit = DB::table('cashes')
                    ->where('type', 'debit') 
                    ->whereBetween('created_at', [Carbon::now()->toDateString(), Carbon::now()])
                    ->sum('price');
        
        $credit = DB::table('cashes')
                    ->where('type', 'credit') 
                    ->whereBetween('created_at', [Carbon::now()->toDateString(), Carbon::now()])
                    ->sum('price');


        //$t = $retireCash->sum('price');            
        $totalCashDay = $totalCash - $totalRetireCash;          
        $money = $money - $totalRetireCash;
        $debit = $debit + 0;
        $credit = $credit + 0;

                   // return $totalCash - $totalRetireCash;
 
		 return view('cash.cash', ['allData' => $allData, 
            'totalCashDay' => $totalCashDay, 
            'money' => $money, 
            'debit' => $debit, 
            'credit' => $credit]);
	}


    public function retireCash(Request $request) {


        RetireCash::create($request->all());

       return Redirect::to('/cash');    

    }

    public function teste336(Request $request) {


$name = $request->input('name');
$fone = $request->input('fone');

$messages = [
    'max' => 'The :Dinheiro indisponivel.',
];

        //valida as requisições
$validator = Validator::make(
[
'name' => $name,
'fone' => $fone
],
[
'name' => 'required', //esse unique é para que o nome do serviço seja unico
'fone' => 'required|numeric|max:60'
]
, $messages);

if ($validator->fails()) //verifica a validação da requisição, se tiver erros ele envia para a pagina
//anterior com os erros.
{
return redirect()
->action('HomeController@index')->withErrors($validator);
}

echo "say<br>";
 

    
}

}
