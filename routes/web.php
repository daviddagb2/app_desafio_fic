<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\EntrepreneurController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => ['auth', 'verified']], function () {
    Route::get('/dashboard', [HomeController::class, 'index'])->name('dashboard');
});

Route::middleware('auth')->group(function () {

    Route::get('/home', [HomeController::class, 'index'])->name('home');

    
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/entrepreneur', [EntrepreneurController::class, 'show'])->name('entrepreneur.show');
    Route::get('/getstarted', [EntrepreneurController::class, 'index'])->name('getstarted');
    Route::post('/getstarted', [EntrepreneurController::class, 'store'])->name('getstarted_store');
    Route::post('/entrepreneur', [EntrepreneurController::class, 'update'])->name('entrepreneur.update');

});

require __DIR__.'/auth.php';
