<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
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

Route::post('updateOs', 'ServiceController@updateOs');

Route::post('createcomment', 'ServiceController@createComment');

Route::post('collectEquip', 'ServiceController@collectEquip');

Route::get('/listos/visualizar/{id}/print', 'ServiceController@printOS');


/*
|--------------------------------------------------------------------------
| Rotas de Cartucho
|--------------------------------------------------------------------------
|
|  insertcartridge
|
*/
Route::get('cartridge/list', 'CartridgeController@listCartOS');
Route::get('/insertcartridge', 'CartridgeController@insertCartridge');
Route::get('/listcartridge', function () {
     return view('cartridge.listCartOS');
 });
Route::get('/cartridge/visualizar/{id}', 'CartridgeController@visualizar');
Route::post('/newcartridge', 'CartridgeController@newCartridge');
Route::post('/changeStateCart', 'CartridgeController@changeStateCart');
Route::get('editStateCartridge', array('as'=>'editStateCartridge', 'uses'=>'CartridgeController@editStateCartridge'));





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
| Rotas de Caixa
|--------------------------------------------------------------------------
|
|  
|
*/

Route::get('/cash', 'CashController@cash');
Route::post('/retirecash', 'CashController@retireCash');













/*
|--------------------------------------------------------------------------
| Rotas de Testes
|--------------------------------------------------------------------------
|
|  
|
*/


// Route::get('/teste', 'HomeController@teste');

 
// Route::get('/tst', 'CartridgeController@testeWh');
// Route::post('/tstCart', function (Request $request) {
//      return $request->all();
//  });

Route::post('/teste336', 'CashController@teste336');




Route::get('foo', function () {
    return 'Hello World';
});




