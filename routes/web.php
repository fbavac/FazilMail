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

Route::get('/', function () {
    return view('welcome');
});



Auth::routes();

	Route::get('/home', 'HomeController@index')->name('home');


	// Route::get('/admin', 'HomeController@admin')->name('home');

Route::group(['middleware' => ['admin']], function () {

	//corrrect

	Route::get('products', 'ProductController@index');

	Route::get('admin/home', function () {
    return view('admin.adminhome');
	});

});


// Route::get('/admins', function () {
//     return view('auth.login');
// });


// Route::group(['middleware' => ['guest']], function () {
    // routes that require user to be authenticated
    Route::get('admins', 'AdminController@adminLogin');
// });

