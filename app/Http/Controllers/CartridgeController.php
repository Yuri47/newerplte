<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Clients;
use App\Cartridge;
use App\OsCartridge;
use DB;
use Redirect;

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

        $pay = $request->input('pay');

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
            $lastInsertIdClient = $client_id;
            $client = Clients::find($client_id);
            $client->name = $name;
            $client->fone = $fone;
            $client->address = $address;
            $client->save();
        }

        $osCartridge = [
            'client_id' => $lastInsertIdClient,
            'state' => 'RECEBIDO',
            'pay' => $pay
        ];

        OsCartridge::create($osCartridge);
        $osCartridge_lastId = DB::getPdo()->lastInsertId();
         





        for ($i = 0; $i <= $request->input('control'); $i++) {

            $cartridge = [
            'osCartridge_id' => $osCartridge_lastId,
            'mark' => $request->input('mark_'.$i),
            'number' => $request->input('number_'.$i),
            'serialNumber' => $request->input('serialNumber_'.$i),
            'price' => $request->input('price_'.$i)

            ];
            Cartridge::create($cartridge);



            

             
        }

       

    	 return Redirect::to('/listcartridge');

    }

    public function listCartOS() {

        $listasOS = DB::table('os_cartridges')
            ->join('clients', 'os_cartridges.client_id', '=', 'clients.id')
            ->select('os_cartridges.*', 'clients.name')
           // ->paginate(6); //this code get the list OS and paginate it
             ->get();
 
     
         
        // $clients->id=5;

        return   \Response::json($listasOS) ;

    }

    public function visualizar($id) {

            $osCart = OsCartridge::find($id);
            $clientData = Clients::find($osCart->client_id);
            $cartridge = Cartridge::where("osCartridge_id", $id)->get();
          //  $comments = Comment::where("os_id", $id)->get();
          //  $collect = CollectEquip::where("os_id", $id)->get();
            $totalPrice = DB::table('cartridges')->where("osCartridge_id", $id)->sum('price');
                                      
            

            return view('cartridge.visualizaros', ['osCart' => $osCart, 
               'clientData' => $clientData, 
               'cartridge' => $cartridge,
                'totalPrice' => $totalPrice
               ]);
              
    }

    public function editStateCartridge(Request $request) {


        $idCart = $request->input('id');
        $estado =  $request->input('estado');

        if ($estado == "Bom") {

            $cartridge = Cartridge::find($idCart);
            $cartridge->state = "Bom";
            $cartridge->save();

        } elseif ($estado == "Cheio") {

            $cartridge = Cartridge::find($idCart);
            $cartridge->state = "Cheio";
            $cartridge->price = 0;

            $cartridge->save();

        } elseif ($estado == "Entupido") {

            $cartridge = Cartridge::find($idCart);
            $cartridge->state = "Entupido";
            $cartridge->price = 0;
            $cartridge->save();

        } 



         $msg = ['name' => 'msg vindo da função: '.$idCart, 'estado' => $estado];

        return $msg;

    }

    public function changeStateCart(Request $request) {

        $osCart = OsCartridge::find($request->input('id'));
        if ($osCart->state == "RECEBIDO") {

        $osCart->state = "PRONTO";

        } elseif ($osCart->state == "PRONTO") {
            $osCart->state = "ENTREGUE";
        }
        
        $osCart->save();

        return Redirect::to('/cartridge/visualizar/'.$request->input('id'));
    }

}
