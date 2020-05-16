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
// Route for frontend pages
Route::get('/', 'FrontendController@index');
Route::get('contact', 'FrontendController@contact');
Route::get('about', 'FrontendController@about');
Route::get('service', 'FrontendController@service');

// Route for authenrtication
Auth::routes();

// Route for Dashboard
Route::get('/home', 'HomeController@index')->name('home');
Route::get('//send/newsletter', 'HomeController@sendnewsletter')->name('newsletter');

// Route for todo tasks
Route::resource('/todos', 'TodoController')->middleware('auth');
Route::put('/todos/{todo}/complete', 'TodoController@complete')->name('todo.complete');

// Route for Contact
Route::resource('/contact', 'ContactController')->middleware('auth');
Route::get('/contact/restore/{contact_id}', 'ContactController@restore')->middleware('auth')->name('contact.restore');
Route::post('/contact/delete/{contact_id}', 'ContactController@force_delete')->middleware('auth')->name('contact.forcedelete');

// Route for Category
Route::resource('/category', 'CategoryController')->middleware('auth');
Route::post('/category/delete/{category_id}', 'CategoryController@force_delete')->middleware('auth')->name('category.forcedelete');
Route::get('/category/restore/{category_id}', 'CategoryController@restore')->middleware('auth')->name('category.restore');

// Route for Profile
Route::get('/profile', 'ProfileController@index')->middleware('auth')->name('profile.index');
Route::get('edit/profile', 'ProfileController@editprofile')->middleware('auth')->name('profile.edit');
Route::post('update/profile', 'ProfileController@update')->middleware('auth')->name('profile.update');
Route::post('update/profile/password', 'ProfileController@password_update')->middleware('auth')->name('profile.password');
Route::post('update/profile/image', 'ProfileController@image_upload')->middleware('auth')->name('profile.image');
