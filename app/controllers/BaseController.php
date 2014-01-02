<?php

class BaseController extends Controller {

	/**
	 * Setup the layout used by the controller.
	 *
	 * @return void
	 */
	protected function setupLayout()
	{
		if ( ! is_null($this->layout))
		{
			$this->layout = View::make($this->layout);
		}
	}

}

$client_id1 = Input::get('client_id');
$businesstest1 = DB::table('clientlists')->where('client_id', '=', $client_id1)->pluck('business_name');
$client_id = DB::table('clientlists')->where('client_id', '=', $client_id1)->pluck('client_id');

