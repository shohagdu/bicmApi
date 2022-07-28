<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\WebContentController;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\PublishedJournalController;
use App\Http\Controllers\ManuscriptController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VolumeIssueController;

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
    Route::get('get-user-details/{id}', [UserController::class, 'get_user_details']);

    Route::get('author-list', [RegistrationController::class, 'author_list']);
    Route::get('user-edit/{id}', [RegistrationController::class, 'user_edit']);
    Route::put('user-update/{id}', [RegistrationController::class, 'user_update']);
    Route::get('user-delete/{id}', [RegistrationController::class, 'user_delete']);

    Route::get('editorial-list', [RegistrationController::class, 'editorial_list']);
    Route::get('reviewer-list', [RegistrationController::class, 'reviewer_list']);

    Route::post('save-journal', [PublishedJournalController::class, 'save_journal']);
    Route::get('published-journal-list', [PublishedJournalController::class, 'published_journal_list']);
    Route::get('published-journal-edit/{id}', [PublishedJournalController::class, 'published_journal_edit']);
    Route::put('published-journal-update/{id}', [PublishedJournalController::class, 'published_journal_update']);
    Route::get('published-journal-delete/{id}', [PublishedJournalController::class, 'published_journal_delete']);

    Route::post('save-menuscript', [ManuscriptController::class, 'save_menuscript']);
    Route::get('published-menuscript-list', [ManuscriptController::class, 'published_menuscript_list']);
    Route::get('published-menuscript-pending-list', [ManuscriptController::class, 'published_menuscript_list']);
    Route::get('published-menuscript-get/{id}', [ManuscriptController::class, 'published_menuscript_get']);
    Route::get('reviewer-menuscript-list/{id}', [ManuscriptController::class, 'reviewer_menuscript_list']);
    Route::get('reviewer-pending-menuscript-list', [ManuscriptController::class, 'reviewer_pending_menuscript_list']);
    Route::get('published-menuscript-details/{id}', [ManuscriptController::class, 'published_menuscript_details']);
    Route::post('update-menuscript', [ManuscriptController::class, 'update_menuscript']);
    Route::get('get-manuscript-author-list/{paperUniqID}', [ManuscriptController::class, 'get_manuscript_author_list']);
    Route::post('add-new-coauthor', [ManuscriptController::class, 'add_new_coauthor']);
    Route::post('assign-menuscript-reviewer', [ManuscriptController::class, 'assign_menuscript_reviewer']);
    Route::post('submission-menuscript-reviewer', [ManuscriptController::class, 'submission_menuscript_reviewer']);
    Route::get('manuscript-coauthor-delete/{id}', [ManuscriptController::class, 'manuscript_coauthor_delete']);
    Route::get('get-menuscript-user/{id}', [ManuscriptController::class, 'get_menuscript_user']);

    Route::post('add-new-menuscript-attahment', [ManuscriptController::class, 'add_new_menuscript_attahment']);

    Route::post('save-volume-issue', [VolumeIssueController::class, 'save_volume_issue']);
    Route::get('volume-issue-list', [VolumeIssueController::class, 'volume_issue_list']);
    Route::get('volume-issue-edit/{id}', [VolumeIssueController::class, 'volume_issue_edit']);
    Route::put('volume-issue-update/{id}', [VolumeIssueController::class, 'volume_issue_update']);
    Route::get('volume-issue-delete/{id}', [VolumeIssueController::class, 'volume_issue_delete']);


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
