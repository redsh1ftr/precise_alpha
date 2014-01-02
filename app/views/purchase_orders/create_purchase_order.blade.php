@extends('layouts.profile1')
@section('content')

		<h1>
		Purchase Order Number: #####-###-###<br>
		Status: OPEN<br>
		<form action="../clients/profile">
			Business Name
		<input type="submit"><br>
		Net Terms<br>
		</h1>
		<br>
		<h2>Billing Contact First/Last</h2>
			<br>
			Billing Contact Phone#
			<br>
			Billing Contact Fax#
			<br>
			Billing Contact Email
			<br>
			Billing Contact Notes
			<br>
			Billing Contact Street Street
			<br>
			Billing Contact City State, Zip
			<br><br>

		<h2>Worksite Name</h2>
			<br>
			Worksite Street/Street
			<br>
			Worksite City State, Zip
			<br><br>

		<h2>Related Service:</h2>
			<br>
			Service	1
		<h2>Purchases</h2>
			<br>
			Purchase 1
			<br>
			Purchase 2
			<br><br>

	<form action="../purchase_order/new">
		Add a Purchase: <input type="text">	
	<input type="submit"><br></form><br>

<form action="../work_order/new">
		New Purchase Order: 	
	<input type="submit"><br>

</form







			<h2>Work Order Notes</h2>
			<br>
			work order notesnotesnotesnoteswork order notesnotesnotesnoteswork order notesnotesnotesnoteswork order notesnotesnotesnoteswork order notesnotesnotesnoteswork order notesnotesnotesnoteswork order notesnotesnotesnoteswork order notesnotesnotesnoteswork order notesnotesnotesnoteswork order notesnotesnotesnotes
			<br><br><br>
<form action="../clients/profile">
		Generate invoice and close Work Order: 	
	<input type="submit"><br>

</form

@stop

work_order_profile<br>for looking at OPEN work orders