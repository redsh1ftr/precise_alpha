@extends('layouts.lookup1')
@section('content')
	

<h1>
	Look up Work Order by:<br><br>
	<form action="work_order/profile">
				BY CLOSED Work Order #:	
	<input type="submit"></form>
		BY Business Name:
		<br>
		BY Billing Contact Name:
		<br>
		BY Worksite:
		
<form action="work_order/new">
				BY Client ID for OPEN Work Order #:	
	<input type="submit"><br></form>
		BY Date:
		<br>
		BY Purchase Order#:
		<br>

</h1>
@stop

lookup_work_order<br>for looking up OPEN or CLOSED work orders
