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


/*
|--------------------------------------------------------------------------
| Rotas de Usuarios
|--------------------------------------------------------------------------
|
|  
|
*/

Route::get('usuarios', ['as' => 'usuarios', 'uses' => 'UsersController@showUsers']);
Route::get('usuarios/listar', ['as' => 'usuarios.listar', 'uses' => 'UsersController@listar']);



/*
|--------------------------------------------------------------------------
| Rotas de Clientes
|--------------------------------------------------------------------------
|
|  
|
*/

Route::get('clients/list', function () {
	return \Response::json(App\Clients::all(), 200);
});

Route::get('/insertclient', 'ClientController@formclient');

Route::post('/newclient', 'ClientController@newClient');
Route::get('clients/list/{id}', function ($id) {
	return \Response::json(App\Clients::findOrFail($id), 200);
});
 
Route::get('editclient', array('as'=>'editclient', 'uses'=>'ClientController@editClient'));


/*
|--------------------------------------------------------------------------
| Rotas de OS
|--------------------------------------------------------------------------
|
|  
|
*/

Route::get('os/list', 'ServiceController@listasOS');
Route::get('os/list/{id}', function ($id) {
	return \Response::json(App\ServiceOrder::findOrFail($id), 200);
});

Route::post('newservice', 'ServiceController@newService');

Route::get('listos', 'ServiceController@listos');

Route::get('/listos/visualizar/{id}', 'ServiceController@visualizar');



/*
|--------------------------------------------------------------------------
| Rotas da Aplicação
|--------------------------------------------------------------------------
|
|  
|
*/

 Route::get('/', function () {
     return view('welcome');
 });

Route::auth();

Route::get('/home', 'HomeController@index');



/*
|--------------------------------------------------------------------------
| Rotas de Testes
|--------------------------------------------------------------------------
|
|  
|
*/


Route::get('/teste', 'HomeController@teste');

Route::get('/tst', 'ClientController@tst');









