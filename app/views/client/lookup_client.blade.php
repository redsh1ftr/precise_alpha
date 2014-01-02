@extends('layouts.lookup1')
@section('content')
	

<h2>
	Look up client by:<br><br>
	<form action="clients/profile/id">
		BY Client Number: 	<input type="text" name = "client_id">
	<input type="submit"></form>

	<form action="clients/profile/business_name">
		BY Business Name: 	<input type="text" name = "business_name">
	<input type="submit"></form>

	<form action="clients/profile/work_order">
		BY Work Order #: 	<input type="text" name = "work_order_number">
	<input type="submit"></form>
		

		<br>
		BY Billing Contact Name:
		<br>
		BY Worksite:
		<br>
		BY Work Order #:
		<br>
		BY Purchase Order#:
		<br>

<form action="clients/new">
		NEW Client: 	
	<input type="submit"><br>

</form
</h2>
@stop

lookup_client<br>
look up a client