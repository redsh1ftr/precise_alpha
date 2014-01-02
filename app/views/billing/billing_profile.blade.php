@extends('layouts.profile1')
@section('content')

		<h1>
		{{ $billing_contact->billing_company }}
		</h1>
<h3>
			Billing Company: {{ $billing_contact->billing_company }}
			<br><br>
			Contact: {{ $billing_contact->first_name }}  {{ $billing_contact->last_name }}
			<br>
			Contact Phone: {{ $billing_contact->phone_number }}
			<br>
			Contact Fax: {{ $billing_contact->fax_number }}
			<br>
			Contact Email: {{ $billing_contact->email }}
			<br><br>
			{{ $billing_contact->billing_street }}
			<br>
			{{ $billing_contact->billing_city }}  {{ $billing_contact->billing_state }} , {{ $billing_contact->billing_zip }}
			<br>
			<br>
</h3>
		<h2>
			Billing Notes:
		</h2>
		<br>
		{{ $billing_contact->billing_notes }}
		<br><br><br>

	<form action="../clients/profile">
		Add this Billing Contact to Client ID: <input type="text">
	<input type="submit"><br></form>

	Current Clients:
	<br>
	@foreach($billing_index as $billing_index_opt)
		<ul>
			{{link_to_route('clientProfilelookup', $billing_index_opt->business_name, array('client_id' => $billing_index_opt->client_id));}}
			

		</ul>
	@endforeach

@stop
billing_profile<br>
For Displaying billing stuff<br>