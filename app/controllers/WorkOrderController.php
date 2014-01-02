<?php

class WorkOrderController extends BaseController {

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

	public function work_orderLookup()
	{
		return View::make('work_orders.lookup_work_order');
	}

	public function work_orderCreate()
	{
		return View::make('work_orders.create_work_order');
	}

	public function work_orderProfile()
	{
		return View::make('work_orders.work_order_profile');
	}

}