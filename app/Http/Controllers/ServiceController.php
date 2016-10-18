<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Clients;
use App\Equipament;
use App\ServiceOrder;
use App\Comment;
use App\CollectEquip;
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
			 
		$ServiceOrder = [
			'client_id' => $id,
			'equipament_id' => $idEquipament,
			'state' => 'RECEBIDO',
			'technical' => '',
			'observations' => '',
			'finalReport' => ''
		];		

			ServiceOrder::create($ServiceOrder);
			$idOS = DB::getPdo()->lastInsertId();


			$OS = ServiceOrder::find($idOS);
			$clientData = Clients::find($id);
			$equipamentData = Equipament::find($idEquipament);

			if ($type == 'NOTEBOOK') {
				$terms = ' NOTEBOOK Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus consectetur laborum alias facilis autem asperiores iure voluptatum doloremque, ipsa consequatur, iusto illo. Porro, harum itaque? Maxime odit distinctio voluptatum porro?';

			} else if ($type == 'COMPUTADOR') {
				$terms = ' COMPUTADOR Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus consectetur laborum alias facilis autem asperiores iure voluptatum doloremque, ipsa consequatur, iusto illo. Porro, harum itaque? Maxime odit distinctio voluptatum porro?';

			} else if ($type == 'IMPRESSORA') {
				$terms = ' IMPRESSORA Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus consectetur laborum alias facilis autem asperiores iure voluptatum doloremque, ipsa consequatur, iusto illo. Porro, harum itaque? Maxime odit distinctio voluptatum porro?';

			}

			 

			 


			return view('os.showos', ['OS' => $OS, 'clientData' => $clientData, 'equipamentData' => $equipamentData, 'terms' => $terms]);
				
		



		// $dados = $req->all();
		// return     \Response::json($OS) ;

	}


	public function listos() {
		return view('os.listos');
	}

	public function listasOS() {
		// return \Response::json(ServiceOrder::all(), 200);

		$listasOS = DB::table('service_orders')
            ->join('clients', 'service_orders.client_id', '=', 'clients.id')
            ->select('service_orders.*', 'clients.name')
           // ->paginate(6); //this code get the list OS and paginate it
             ->get();
 
	 
		 
		// $clients->id=5;

		return   \Response::json($listasOS) ;


	}

	public function visualizar($id) {

			$OS = ServiceOrder::find($id);
			$clientData = Clients::find($OS->client_id);
			$equipamentData = Equipament::find($OS->equipament_id);
			$comments = Comment::where("os_id", $id)->get();
			$collect = CollectEquip::where("os_id", $id)->get();


			return view('os.visualizaros', ['OS' => $OS, 'clientData' => $clientData, 'equipamentData' => $equipamentData, 'comments' => $comments, 'collect' => $collect]);
			  
		 

 
			 

	}

	public function updateOs(Request $request) {

		//$OS = $request->all();

		$OS = ServiceOrder::find($request->input('id'));
		$OS->technical = $request->input('technical');
		$OS->price = $request->input('price');
		$OS->state = 'PRONTO';
		$OS->finalReport = $request->input('finalReport');
		$OS->save();


		 return redirect('listos/visualizar/'.$request->input('id'));

	}

	public function createComment(Request $request) {

		$comment = $request->all();
		Comment::create($comment);

		if ($request->input('state') == 'RECEBIDO') {
			$OS = ServiceOrder::find($request->input('os_id'));
			$OS->state = 'ANALISE';
			$OS->save();

		}

		return redirect('listos/visualizar/'.$request->input('os_id'));


	}

	public function collectEquip(Request $request) {

		CollectEquip::create($request->all());

		$OS = ServiceOrder::find($request->input('os_id'));
		$OS->state = 'ENTREGUE';
		$OS->save();


		return redirect('listos/visualizar/'.$request->input('os_id'));

	} 

}
