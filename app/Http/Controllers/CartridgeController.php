<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Clients;
use App\Cartridge;
use App\osCartridge;
use DB;

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

        $client_id = $request->input('client_id');
        $name = $request->input('name');
        $fone = $request->input('fone');
        $address = $request->input('address');

        $lastInsertIdClient;

         

        if (empty($client_id)) {
            $clientArray = [ //monta o objeto cliente
            'name' => $name, 
            'fone' => $fone,
            'address' => $address
            ];

            Clients::create($clientArray); 
            $lastInsertIdClient = DB::getPdo()->lastInsertId();


        } else if (!empty($client_id)) {
            $client = Clients::find($client_id);
            $client->name = $name;
            $client->fone = $fone;
            $client->address = $address;
            $client->save();
        }



        $client_id = $request->input('client_id');
        $client_id = $request->input('client_id');
        $client_id = $request->input('client_id');
        $client_id = $request->input('client_id');
        $client_id = $request->input('client_id');





        for ($i = 0; $i <= $request->input('control'); $i++) {
            echo "modelo: ".$request->input('modelo_'.$i)." - nome:" . $request->input('nome_'.$i)."</br>";

             
        }

       

    	 return $request->all();

    }

}
