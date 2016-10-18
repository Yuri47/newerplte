<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Clients;
use App\User;

use Redirect;
use DB;
class ClientController extends Controller
{
    //


	public function __construct()
    {
        $this->middleware('auth'); // This code checks if the user is logged.
    }

    public function formclient() {

    	return view('os/newos');

    }


	public function newClient(Request $req) {
		$client = $req->except('id');
		Clients::create($client); 

		 

		//return Redirect::to('insertclient'); 
		 return DB::getPdo()->lastInsertId();//isso retorna o ultimo ID inserido, será usado para pegar o id do cliente e colocar na
		 //tabela de equipamentos

	}
 

 public function editClient(Request $request) {
        $name = $request->input('name');
        $id = $request -> input('id');
        $fone = $request -> input('fone');
		$address = $request -> input('address');

		$client = Clients::find($id); 
		$client->name = $name;
		$client->fone = $fone;
		$client->address = $address;
		$client->save();

        $msg = "funciona ajax".$name;
        $msg = ['name' => $name.$id, 'location' => 'local'];
        return $msg;

    }

public function tst() {
$users = DB::table('clients')->count();
return $users;
}




}
