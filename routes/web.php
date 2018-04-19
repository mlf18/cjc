<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', function () {
    return view('dashboard.index');
});



Auth::routes();

Route::get('/home', 'HomeController@index');
// Route::resource('dashboard', 'DashboardController');
// Route::get('/dashboard', function () {
//     return view('dashboard.index');
// });
Route::get('/seminar', function () {
    return view('dashboard.seminar');
});
Route::get('/kontak', function () {
    return view('dashboard.kontak');
});
Route::get('/seminarnasional', function () {
    return view('dashboard.nasional');
});
Route::get('/seminarregional', function () {
    return view('dashboard.regional');
});


Route::get('/pengregional', function () {
    return view('pengumuman.regional');
});
Route::get('/pengnasional', function () {
    return view('pengumuman.semnas');
});
Route::get('/penginter', function () {
    return view('pengumuman.internasional');
});


Route::get('/alur', function () {
    return view('dashboard.alur');
});
Route::get('/daftarseminter', function () {
    return view('dashboard.daftarseminter');
});
Route::get('/daftarsemnas', function () {
    return view('dashboard.daftarsemnas');
});
Route::get('/daftarsemreg', function () {
    return view('dashboard.daftarsemreg');
});


Route::get('/berita', function () {
    return view('dashboard.berita');
});
Route::get('/galeri', function () {
    return view('dashboard.galeri');
});
Auth::routes();

Route::get('/home', 'HomeController@index');
Route::resource('pemakalahs', 'PemakalahController');