<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Clients;
use App\Equipament;
use App\serviceOrder;
use DB;


class ServiceController extends Controller{


	public function __construct()
    {
        $this->middleware('auth');
    }
    //


	public function newService(Request $req) {

		// get data 
		$id = $req->input('id');
		$name = $req->input('name');
		$fone = $req->input('fone');
		$address = $req->input('address');
		$type = $req->input('type');
		$serialNumber = $req->input('serialNumber');
		$mark = $req->input('mark');
		$design = $req->input('design');
		$problem = $req->input('problem');
		$observations = $req->input('observations');

		//variaveis aux
		$lastID;
		$client;


		$client = [ //monta o objeto cliente
			'name' => $name, 
 		  	'fone' => $fone,
 		  	'address' => $address
 		  	]; 



		// verifica se os dados de usuário é de um novo usuario ou se foi usado um usuario ja existente

		if ($id == '') {//se for um novo cliente ele será adicionado
 
			Clients::create($client); 
			$id = DB::getPdo()->lastInsertId(); //pega o ultimo ID
			 
			 
		}  
		 

		$equipament = [
			'client_id' => $id,
			'type' => $type,
			'serialNumber' => $serialNumber,
			'mark' => $mark,
			'design' => $design,
			'problem' => $problem,
			'observations' => $observations
		];

			Equipament::create($equipament);
			$idEquipament = DB::getPdo()->lastInsertId();
			 
		$serviceOrder = [
			'client_id' => $id,
			'equipament_id' => $idEquipament,
			'state' => 'ANALISE',
			'technical' => '',
			'observations' => '',
			'finalReport' => ''
		];		

			serviceOrder::create($serviceOrder);
			$idOS = DB::getPdo()->lastInsertId();


			$OS = serviceOrder::find($idOS);
			$clientData = Clients::find($id);
			$equipamentData = Equipament::find($idEquipament);

			if ($type == 'NOTEBOOK') {
				$terms = ' NOTEBOOK Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus consectetur laborum alias facilis autem asperiores iure voluptatum doloremque, ipsa consequatur, iusto illo. Porro, harum itaque? Maxime odit distinctio voluptatum porro?';

			} else if ($type == 'COMPUTADOR') {
				$terms = ' COMPUTADOR Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus consectetur laborum alias facilis autem asperiores iure voluptatum doloremque, ipsa consequatur, iusto illo. Porro, harum itaque? Maxime odit distinctio voluptatum porro?';

			} else if ($type == 'IMPRESSORA') {
				$terms = ' IMPRESSORA Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus consectetur laborum alias facilis autem asperiores iure voluptatum doloremque, ipsa consequatur, iusto illo. Porro, harum itaque? Maxime odit distinctio voluptatum porro?';

			}

			 

			 


			return view('showos', ['OS' => $OS, 'clientData' => $clientData, 'equipamentData' => $equipamentData, 'terms' => $terms]);
				
		



		// $dados = $req->all();
		// return     \Response::json($OS) ;

	}


	public function listos() {
		return view('listos');
	}

	public function listasOS() {
		// return \Response::json(serviceOrder::all(), 200);

		$listasOS = DB::table('service_orders')
            ->join('clients', 'service_orders.client_id', '=', 'clients.id')
            ->select('service_orders.*', 'clients.name')
           // ->paginate(6); //this code get the list OS and paginate it
             ->get();
 
	 
		 
		// $clients->id=5;

		return   \Response::json($listasOS) ;;


	}

	public function visualizar($id) {

			$OS = serviceOrder::find($id);
			$clientData = Clients::find($OS->client_id);
			$equipamentData = Equipament::find($OS->equipament_id);


			return view('visualizaros', ['OS' => $OS, 'clientData' => $clientData, 'equipamentData' => $equipamentData]);

			 

	}

}
