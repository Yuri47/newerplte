<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::get('usuarios', ['as' => 'usuarios', 'uses' => 'UsersController@showUsers']);
Route::get('usuarios/listar', ['as' => 'usuarios.listar', 'uses' => 'UsersController@listar']);
Route::get('clients/list', function () {
	return \Response::json(App\Clients::all(), 200);
});


 Route::get('/', function () {
     return view('welcome');
 });

Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/insertclient', 'ClientController@formclient');

Route::post('/newclient', 'ClientController@newClient');
Route::get('clients/list/{id}', function ($id) {
	return \Response::json(App\Clients::findOrFail($id), 200);
});
 
Route::get('editclient', array('as'=>'editclient', 'uses'=>'ClientController@editClient'));

Route::post('newservice', 'ServiceController@newService');

Route::get('/teste', 'HomeController@teste');

Route::get('/tst', 'ClientController@tst');