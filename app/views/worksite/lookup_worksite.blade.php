@extends('layouts.lookup1')
@section('content')
	

<h1>
	Look up worksite by:<br><br>
	<form action="worksite/profile">
		BY Client Number: 	
	<input type="submit"><br>
		BY Business Name:
		<br>
		BY Billing Contact Name:
		<br>
		BY Worksite Name:
	
</form>
<form action="worksite/new">
		NEW Worksite: 	
	<input type="submit"><br>

</form
</h1>
@stop

lookup_worksite<br><br>
