<?php

class ServicesController extends BaseController {

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

	public function servicesLookup()
	{
		return View::make('services.lookup_services');
	}

	public function servicesCreate()
	{
		return View::make('services.create_services');
	}

	public function servicesProfile()
	{
		return View::make('services.services_profile');
	}

}