<?php

/** @var \Laravel\Lumen\Routing\Router $router */

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



$router->group(['prefix'=>'api'],function () use ($router){

    $router->post('/login','AuthController@login');
    $router->post('/register','AuthController@register');
    $router->post('/logout','AuthController@logout');


    $router->group(['middleware'=>'auth'],function () use ($router){
        $router->get('/journal','JournalController@index');
        $router->post('/journal','JournalController@store');
        $router->put('/journal/{id}','JournalController@update');
        $router->delete('/destroy/{id}','JournalController@destroy');
    });
});
