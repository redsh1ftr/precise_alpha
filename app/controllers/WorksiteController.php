<?php

class WorksiteController extends BaseController {

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

	public function worksiteLookup()
	{
		return View::make('worksite.lookup_worksite');
	}

	public function worksiteCreate()
	{
		return View::make('worksite.create_worksite');
	}

	public function worksiteProfile()
	{
		return View::make('worksite.worksite_profile');
	}

}