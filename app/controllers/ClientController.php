<?php

class ClientController extends BaseController {

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


public function clientProfilelookup($client_id){

//get the main input from previoud page
//$getid = Input::get('client_id');
//make sure there's data there
$checkid = DB::table('clientlists')->where('client_id', '=', $client_id)->pluck('id');
return View::make('client.client_profile',  array('pagetitle' => 'Client Hub'))
//models for Client ID search
			->with('clientlist', Clientlookup::findorFail($checkid))//get all the client data
			->with('billingcompanies', Clientbillingindex::where('client_id', '=', $client_id)->get())
			->with('pagetitle', 'Client Hub');
			
		}


	public function clientLookup()
	{
		return View::make('client.lookup_client')
		//->with ('clients', DB::table('clientlists')->where('$client_id'get())
		->with('pagetitle', 'Client Lookup');
	}

	public function clientCreate()
	{
		return View::make('client.create_new_client', array('business_name' => 'Precise'))
			->with('net_terms', '30')
			->with('pagetitle', 'New Client');
	}

	public function clientProfile()
	{

//inputs from lookup page:
//clientid isolation
		//$checkclientid = Input::get('client_id');
		$checkid = DB::table('clientlists')->where('client_id', '=', 'client_id')->pluck('id');

//businessname isolation
		//$checkbusinessname = Input::get('business_name');
		$checkbusiness = DB::table('clientlists')->where('business_name', '=', 'business_name')->pluck('client_id');

//workorder isolation
		//$clientlookup = Clientlookup::where('client_id', '=', 'client_id')->firstorFail();//get all the client data
		//$getbillingindex = DB::table('billing_index')->where('client_id', '=', $checkid)->get();//grab the billing index


//returns:

//check ID 
		if($checkid or $checkbusiness){
			return View::make('client.client_profile')
			->with('pagetitle', 'Client Hub')
			->with('clientlist', Clientlookup::where('client_id', '=', $checkid)->get())//get all the client data
			->with('billingcompanies', Clientbillingindex::where('client_id', '=', $checkid)->get());
			
		}

		
//check Business name		
		
		if($checkbusiness)	{
			return View::make('client.client_profile')
			->with('pagetitle', 'Client Hub')
			->with('clientlist', Clientlookup::where('business_name', '=', $checkbusiness)->get())//get all the client data
			->with('billingcompanies', Clientbillingindex::where('business_name', '=', $checkbusiness)->get());
		}

	}

public function clientProfilebyCID(){

//get the main input from previoud page
$getid = Input::get('client_id');
//make sure there's data there
$checkid = DB::table('clientlists')->where('client_id', '=', $getid)->pluck('id');
return View::make('client.client_profile',  array('pagetitle', 'Client Hub'))
//models for Client ID search
			->with('clientlist', Clientlookup::find($checkid))//get all the client data
			->with('billingcompanies', Clientbillingindex::where('client_id', '=', $getid)->get())
			->with('pagetitle', 'Client Hub');
			
		}

public function clientProfilebyBusinessName($billing_company){

//get the main input from previoud page
$getid = Input::get($billing_company);
//make sure there's data there, grab the UID
$checkid = DB::table('clientlists')->where('business_name', '=', $getid)->pluck('id');
return View::make('client.client_profile',  array('pagetitle', 'Client Hub'))
//models for Client ID search
			->with('clientlist', Clientlookup::findorFail($checkid)->get())//get all the client data
			->with('billingcompanies', Clientbillingindex::where('business_name', '=', $getid)->get());
			
		}
		


		}
/*
public function clientProfilebyWorkOrder(){

//get the main input from previoud page
$getid = Input::get('work_order');
//make sure there's data there, grab the UID
$checkid = DB::table('work_order_list')->where('work_order_number', '=', $getid)->pluck('id');
return View::make('client.client_profile',  array('pagetitle', 'Client Hub'))
//models for Client ID search
			->with('clientlist', Clientlookup::findorFail($checkid)->get())//get all the client data
			->with('billingcompanies', Clientbillingindex::where('work_order_number', '=', $getid)->get());
			
		}

*/



