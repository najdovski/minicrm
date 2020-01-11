<?php

Route::get('/', 'CompaniesController@index')->name('home');

Route::resource('/company', 'CompaniesController');
Route::resource('/employee', 'EmployeesController');

// Auth routes, with disabled register route
Auth::routes([
    'register' => false
]);

// Admin home panel
Route::get('/admin', 'AdminController@index')->name('admin.index');