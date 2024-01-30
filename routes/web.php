<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/home', [App\Http\Controllers\ColleagueController::class, 'index'])->name('index');
Route::get('/home/fetch_data', [App\Http\Controllers\ColleagueController::class, 'fetch_data'])->name('fetch_data');
Route::post('/home/add_data', [App\Http\Controllers\ColleagueController::class, 'store'])->name('store');
Route::get('/home/update_data', [App\Http\Controllers\ColleagueController::class, 'update_data'])->name('update_data');
Route::get('/home/delete_data', [App\Http\Controllers\ColleagueController::class, 'delete_data'])->name('delete_data');

