@extends('layouts.profile1')
@section('content')

		<h1>
		Worksite Name:
		</h1>
			Contact First/Last
			<br>
			Contact Phone#
			<br>
			Contact Fax#
			<br>
			Contact Email
			<br>
			Contact Notes
			<br>
			Contact Street Street
			<br>
			Contact City State, Zip
			<br>
			Worksite Notes
			<br><br><br>

	<form action="../clients/profile">
		Add this Worksite to Client ID: <input type="text">	
	<input type="submit"><br></form>
@stop