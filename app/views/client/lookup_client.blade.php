@extends('layouts.lookup1')
@section('content')
	

<h2>
	Look up client by:<br><br>
	<form action="clients/profile/id">
		Client Number: 	
		<br>
	<input type="text" name = "client_id">
	<input type="submit"></form>

	<form action="clients/profile/business_name">
		Business Name: 
		<br>
	<input type="text" name = "business_name">
	<input type="submit"></form>

	<form action="clients/profile/work_order">
		Work Order #: 	
		<br>
	<input type="text" name = "work_order_number">
	<input type="submit"></form>

	<form action="clients/profile/work_order">
		Purchase Order #: 	
		<br>
	<input type="text" name = "purchase_order_number">
	<input type="submit"></form><br><br>


		<a href = clients/new>New Client</a>


</form
</h2>
@stop
