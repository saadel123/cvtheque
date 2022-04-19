<?php

use App\Http\Controllers\CvController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ImageFileController;

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



Route::get('/', [CvController::class, 'index'])->name('index');
/*
Route::get('cvs', 'CvController@index');
Route::get('cvs/create', 'CvController@create');
Route::post('cvs', 'CvController@store');
Route::get('cvs/{id}/edit', 'CvController@edit');
Route::put('cvs/{id}', 'CvController@update');
Route::delete('cvs/{id}', 'CvController@destroy');
*/

//hadi equivalent dyal 6 routes li3ndna lfo9 za2id route dyal show mkaybanch howa 7 
//note darori maykono hadok 6 methodes index,create etc
Route::resource('cvs', CvController::class);

//Route::get('cvs/{id}', 'CvController@show');
Route::get('/getexperiences/{$id}', 'CvController@getExperiences');

//Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::post('/add-watermark', [ImageFileController::class, 'imageFileUpload'])->name('image.watermark');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
