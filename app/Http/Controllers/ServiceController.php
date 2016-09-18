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
			'state' => 1,
			'technical' => '',
			'observations' => '',
			'finalReport' => ''
		];		

			serviceOrder::create($serviceOrder);
			$idOS = DB::getPdo()->lastInsertId();


			$OS = serviceOrder::find($idOS);
			$clientData = Clients::find($id);
			$equipamentData = Equipament::find($idEquipament);

			
			


			return view('showos', ['OS' => $OS, 'clientData' => $clientData, 'equipamentData' => $equipamentData]);
				
		



		// $dados = $req->all();
		// return     \Response::json($OS) ;

	}

}
