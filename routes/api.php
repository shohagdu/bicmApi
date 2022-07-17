<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\WebContentController;
use App\Http\Controllers\RegistrationController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('login', [AuthController::class, 'login']);
Route::post('register', [AuthController::class, 'register']);

Route::group(['middleware' => 'api'], function(){

    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refresh']);
    Route::post('me', [AuthController::class, 'me']);
    Route::post('profile', [AuthController::class, 'profile']);

    Route::get('author-list', [RegistrationController::class, 'author_list']);
    Route::get('author-edit/{id}', [RegistrationController::class, 'author_edit']);
    Route::put('author-update/{id}', [RegistrationController::class, 'author_update']);
    Route::get('author-delete/{id}', [RegistrationController::class, 'author_delete']);

    Route::get('about', [WebContentController::class, 'about']);
    Route::get('publisherinformation', [WebContentController::class, 'publisherinformation']);
    Route::get('authorguideline', [WebContentController::class, 'authorguideline']);
    Route::get('permission', [WebContentController::class, 'permission']);
    Route::get('openaccess', [WebContentController::class, 'openaccess']);
    Route::get('contact', [WebContentController::class, 'contact']);
    Route::post('save-web-content', [WebContentController::class, 'store']);
    Route::post('issue-save', [WebContentController::class, 'issue_save']);
    Route::get('get-issue', [WebContentController::class, 'get_issue']);

});
