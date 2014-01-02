@extends('layouts.lookup1')
@section('content')


	@foreach ($billing_contact as $billing_contacts)
	<li>{{	$billing_contacts->billing_company 	}}</li>
	@endforeach


<h1>
	Look up Billing Contact by:<br><br>
	<form action="billing/profile">
		Client Number:<input type="text" name="client_id">	
	<input type="submit"></form>

	<form action="billing/profile">
		Business Name:<input type="text" name="business_name">	
	<input type="submit"></form>
		
		
		<form action="billing/profile">
		BY Billing Company:<input type="text" name="billing_company">	
	<input type="submit"><br></form>
			

<form action="billing/new">
		NEW Billing Contact: <input type="text" name="check_billing_company">	
	<input type="submit"><br>

</form
</h1>
@stop

lookup_billing<br>
look for billing contacts