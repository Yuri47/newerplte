<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;

class UsersController extends Controller
{
    //

	public function showUsers() {

		

		return view('os.usuarios');
	}

	public function listar() {

		return \Response::json(User::all(), 200);

	}


}
