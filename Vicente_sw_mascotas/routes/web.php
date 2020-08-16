<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'usuarios'], function($router){
    $router->get('all','UserController@all');
    $router->post('ingresar','UserController@login');
    $router->post('salir','UserController@salir');




});

$router->post('ingresar','ClienteController@login');
$router->post('crearcuenta','ClienteController@create');
$router->post('salir','ClienteController@salir');


//$router->group(['middleware' => 'auth'], function() use($router){

    //clientes
$router->group(['prefix' => 'clientes'], function($router){

    $router->get('all','ClienteController@all');
    $router->get('allJson','ClienteController@allJson');
    //$router->post('create','ClienteController@create');
});

    
   
//});


$router->group(['prefix' => 'mascotas'], function($router){

    $router->get('all','MascotasController@all');
    $router->post('create','MascotasController@createMascota');
});

$router->group(['prefix' => 'turnos'], function($router){

    $router->get('all','TurnosController@all');
    $router->post('create','TurnosController@createCite');
//listar conciencias por sedula
    $router->get('getTce/{cedula}','TurnosController@getTurnos');
    $router->get('getTinfor','TurnosController@getall');

    
});

    
   
