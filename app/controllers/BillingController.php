<?php

class BillingController extends BaseController {

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

	public function billingLookup()
	{
		$client_id1 = Input::get('company_name');
		$checkbilling = Billing1::all();
	if($checkbilling){
		return View::make('billing.lookup_billing_contact')
		->with('billing_contact', Billing1::all());
	}}

	public function billingCreate()
	{
		return View::make('billing.create_billing_contact');
	}
	public function billingProfile($billing_company)
	{

//make sure there's data there
//$checkid = DB::table('billing_contact_list')->where('billing_company', '=', $billing_company)->pluck('id');
return View::make('billing.billing_profile',  array('pagetitle', 'Client Hub'))
//models for Client ID search
			->with('billing_contact', Billing1::findorFail($billing_company))//get all the client data
			->with('billingcompanies', Billingindex::where('billing_company', '=', $billing_company)->get());

/*

		return View::make('billing.billing_profile', array('pagetitle', 'Billing Hub'))
		->with('billing_contact', Billing1::where('billing_company', '=', 'billing_company')->get())
		->with('billing_index', Billingindex::where('billing_company', '=', 'billing_company')->get());*/
	}

	public function billingProfilelink($id)
{


//make sure there's data there
$checkid = DB::table('billing_contact_list')->where('id', '=', $id)->pluck('id');
return View::make('billing.billing_profile',  array('pagetitle', 'Client Hub'))
//models for Billing ID link
			->with('billing_contact', Billing1::find($id))//get all the client data
			->with('billing_index', Billingindex::find($id)->get());

}}

