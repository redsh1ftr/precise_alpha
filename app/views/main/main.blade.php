@extends('layouts.profile1')
@section('content')
	

<h1>

	<form action="clients">
			Clients
	<input type="submit"></form>
		<br>
		<br>
	<form action="billing">
			Billing Information
	<input type="submit"></form>
		<br>
		<br>	

	<form action="worksite">
			Worksites
	<input type="submit"></form>
		<br>
		<br>

	<form action="work_order">
			Work Orders
	<input type="submit"></form>
		<br>
		<br>

	<form action="purchase_order">
			Purchase Orders
	<input type="submit"></form>
		<br>
		<br>

	<form action="services">
			Services
	<input type="submit"></form>
		<br>
		<br>


		QuickLook:
		<br>

</h1>
<br>
Client Number: INPUT CLIENT NUMBER
		<br>
		Business Name: INPUT BUSINESS NAME
		<br>
		Work Order Number: INPUT WO#
		<br>
		Purchase Order Number: INPUT PO#
		<br>

@stop

