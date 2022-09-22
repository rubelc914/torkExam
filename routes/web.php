<?php

use App\Http\Controllers\QuestionController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/question', [QuestionController::class, 'index']);
Route::get('/question/create', [QuestionController::class, 'create']);
Route::post('/question/store', [QuestionController::class, 'store']);
Route::get('/question/edit/{id}', [QuestionController::class, 'edit']);
Route::post('/question/update/{id}', [QuestionController::class, 'update']);
