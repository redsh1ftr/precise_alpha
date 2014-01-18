@extends('layouts.lookup1')
@section('content')

<h1>
	Look up a billing contact by<br><br>
	<form action="billing/profile">
		Client Number<br>
	<input type="text" name="client_id">	
	<input type="submit"></form>

	<form action="billing/profile">
		Business Name<br>
	<input type="text" name="business_name">	
	<input type="submit"></form>
		
		
	<form action="billing/profile">
		Billing Company <br>
	<input type="text" name="billing_company">	
	<input type="submit"><br></form>
			
	<br><br>
<a href = billing/new>New Billing Contact</a>

</form
</h1>
@stop