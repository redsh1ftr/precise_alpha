<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/


Route::get('/', function()
{
	return View::make('main.hello');
});


Route::get('/main', function()
{
	return View::make('main.main')
	->with('pagetitle', 'Main Hub');
});

//client routes

Route::get('clients', array('uses' => 'ClientController@clientLookup'));

Route::get('clients/new', array('uses' => 'ClientController@clientCreate'));

//Route::get('clients/profile', array('as' => 'clientprofileroute', 'uses' => 'ClientController@clientProfile'));

Route::get('clients/profile/id', array('as' => 'clientprofileroute', 'uses' =>'ClientController@clientProfilebyCID'));

Route::get('clients/profile/business_name', array('as' => 'clientprofileroute', 'uses' =>'ClientController@clientProfilebyBusinessName'));

Route::get('clients/profile/{client_id}', array('as' => 'clientProfilelookup', 'uses' => 'ClientController@clientProfilelookup'));

//billing routes

Route::get('billing', array('uses' => 'BillingController@billingLookup'));

Route::get('billing/new', array('uses' => 'BillingController@billingCreate'));

Route::get('billing/profile/{client_id}', array('as' => 'myRoute', 'uses' => 'BillingController@billingProfilelink'));

Route::get('billing/profile/id', array('as' => 'IDRoute', 'uses' => 'BillingController@billingLookup'));

//purchase order routes
Route::get('purchase_order', array('uses' => 'PurchaseOrderController@purchase_orderLookup'));

Route::get('purchase_order/new', array('uses' => 'PurchaseOrderController@purchase_orderCreate'));

Route::get('purchase_order/profile', array('uses' => 'PurchaseOrderController@purchase_orderProfile'));

//work order routes
Route::get('work_order', array('uses' => 'WorkOrderController@work_orderLookup'));

Route::get('work_order/profile', array('uses' => 'WorkOrderController@work_orderProfile'));

//from client view
Route::get('/clients/profile/work_order/new', array('uses' => 'WorkOrderController@work_orderCreate'));




//worksite routes

Route::get('worksite', array('uses' => 'WorksiteController@worksiteLookup'));

Route::get('worksite/new', array('uses' => 'WorksiteController@worksiteCreate'));

Route::get('worksite/profile', array('uses' => 'WorksiteController@worksiteProfile'));

//services routes

Route::get('services', array('uses' => 'ServicesController@servicesLookup'));

Route::get('services/new', array('uses' => 'ServicesController@servicesCreate'));

Route::get('services/profile', array('uses' => 'ServicesController@servicesProfile'));



//Route::get('/clients/worksite', array('uses' => 'WorksiteController@worksiteLookup'));

Route::get('clients/clients', array('uses' => 'ClientController@clientProfile'));