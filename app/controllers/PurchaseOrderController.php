<?php

class PurchaseOrderController extends BaseController {

	/*
	|--------------------------------------------------------------------------
	| Default Home Controller
	|--------------------------------------------------------------------------
	|
	| You may wish to use controllers instead of, or in addition to, Closure
	| based routes. That's great! Here is an example controller method to
	| get you started. To route to this controller, just add the route:
	|
	|	Route::get('/', 'HomeController@showWelcome');
	|
	*/
	public $restful = true;

	public function purchase_orderLookup()
	{
		return View::make('purchase_orders.lookup_purchase_order');
	}

	public function purchase_orderCreate()
	{
		return View::make('purchase_orders.create_purchase_order');
	}

	public function purchase_orderProfile()
	{
		return View::make('purchase_orders.purchase_order_profile');
	}

}