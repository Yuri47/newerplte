<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Clients;
use App\Cartridge;
use App\OsCartridge;
use DB;
use Redirect;
use App\Cash;
use App\RetireCash;
use Carbon\Carbon;

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
         

        $precoCartuchos = 0;



        for ($i = 0; $i <= $request->input('control'); $i++) {

            $cartridge = [
            'osCartridge_id' => $osCartridge_lastId,
            'mark' => $request->input('mark_'.$i),
            'number' => $request->input('number_'.$i),
            'serialNumber' => $request->input('serialNumber_'.$i),
            'price' => $request->input('price_'.$i)

            ];
            Cartridge::create($cartridge);
            $precoCartuchos = $precoCartuchos + $request->input('price_'.$i);
 
             
        }

       if ($pay == "yes") {
            $cash = [
            'price' => $precoCartuchos,
            'description' => 'Recarga' 

            ];
            Cash::create($cash);
            $idCash = DB::getPdo()->lastInsertId();

            $osCart = OsCartridge::find($osCartridge_lastId);
            $osCart->cash_id = $idCash;
            $osCart->save();
             


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
            $cash = Cash::find($osCart->cash_id);
                                      
            

            return view('cartridge.visualizaros', ['osCart' => $osCart, 
               'clientData' => $clientData, 
               'cartridge' => $cartridge,
                'totalPrice' => $totalPrice,
                'cash' => $cash
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

            if ($request->input('price') != 0.00 && $osCart->pay == "no") { //verifica se já foi pago
                //e se o valor é diferente de 0
              
                Cash::create($request->except('id'));

            } elseif ($osCart->pay == "yes" && !empty($request->input('retireCash'))) {

                $retire = [
                    'price' => $request->input('retireCash'),
                    'description' => 'Devoluçao de Recarga'
                ];

                RetireCash::create($retire);


            }

            $osCart->state = "ENTREGUE";
            $osCart->pay = "yes";

        }
        
         $osCart->save();

        return Redirect::to('/cartridge/visualizar/'.$request->input('id'));
    }

    public function testeWh() {

         



        $users = DB::table('os_cartridges')
                    ->whereBetween('created_at', ['2016-10-18', Carbon::now()])->get();
                     

        //$users = Cash::find(17);


        //https://github.com/briannesbitt/Carbon
        //http://carbon.nesbot.com/docs/

                    // $dt = Carbon::parse($users->created_at);
                       

                    //  //  echo $dt->year."-".$dt->month."-".$dt->day."<br>";
                    //    //echo $dt->toDateString(); 
                    //   // echo  Carbon::now()->toDateString();

                    // if ($dt->toDateString() == Carbon::now()->subDay()->toDateString()) {
                    //     echo "igual";
                    // } else {
                    //     echo "n".Carbon::now()->subDay()->toDateString();
                    // }

                    return $users;

                  //  return $users->created_at;

    }

}
