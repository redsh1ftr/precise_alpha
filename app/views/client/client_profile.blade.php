@extends('layouts.profile1')
@section('content')





<h1>
{{ $clientlist->business_name }}
</h1>
	<h2>
	Client ID:	{{	$clientlist ->client_id	}}
		<br>
	Business Type:	{{	$clientlist->business_type	}}
		<br>
	Current Job Number:	{{	$clientlist->current_job_number	}}
		<br>
		Purchase Order Counter
		<br>
		{{	$clientlist->net_terms	}}
		<br>
	</h2>



<h1>
		Billing Contacts:
</h1>

<h3>

@foreach($billingcompanies as $billinglist)
	<ul>
    {{link_to('billing/profile/'.urlencode($billinglist->billing_id), $billinglist->billing_company, array('billing_id' => $billinglist->billing_id));}}
    <br>
	{{$billinglist->first_name}} {{$billinglist->last_name}}
	<br>
	Phone:  {{$billinglist->phone_number}}
	<br>
	Fax:  {{$billinglist->fax_number}}
	<br>
	{{$billinglist->email}}
	<br><br>

	{{$billinglist->billing_street}}
	<br>
	{{$billinglist->billing_city}} {{$billinglist->billing_state}}, {{$billinglist->billing_zip}}
	<br><br>

	Notes:<br>
	<h4>
	{{$billinglist->billing_notes}}</h4>
	</ul>
@endforeach



	<a href = ".../billing">Add Billing Contact</a>
	<form action="../billing">
		Add another billing contact to client
	<input type="submit"><br></form>


	<h1><br>
		Worksites:
	</h1>
	<h3>
	<form action="../worksite">
		Add a worksite to client:
	<input type="submit"><br></form>
</h3>
		<h2>
		Worksite 1:
		</h2>
		<h3>
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
			Worksite Street/Street
			<br>
			Worksite City State, Zip
			<br><br>
			Worksite Notes:
			<br>
			notes notes notes notesnotenotesnotes
notes notes notes notesnotenotesnotes
notes notes notes notesnotenotesnotes
notes notes notes notesnotenotesnotes
</h3>
		<h2>
		Worksite 2:
		</h2>
		<h3>
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
			Worksite Street/Street
			<br>
			Worksite City State, Zip
			<br><br>
			Worksite Notes:
			<br>
			notes notes notes notesnotenotesnotes
notes notes notes notesnotenotesnotes
notes notes notes notesnotenotesnotes
notes notes notes notesnotenotesnotes
</h3><br>
	<h2>
		Work Orders:
	</h2>
	<h3>
		<form action="work_order/new">
			New Work Order
		<input type="submit"></form>

		Recent Work Order 1<br>
		Recent Work Order 2<br>
		Recent Work Order 3<br>
		Recent Work Order 4<br>
		Recent Work Order 5<br><br>

		<form action="../work_order">
			Work Order Lookup
		<input type="submit"></form>

		</h3><br>

<h2>
		Purchase Orders:
</h2>
<h3>

		Recent Purchase Order 1<br>
		Recent Purchase Order 2<br>
		Recent Purchase Order 3<br>
		Recent Purchase Order 4<br>
		Recent Purchase Order 5<br><br>

		<form action="../purchase_order">
			Purchase Order Lookup
		<input type="submit"></form>
	</h3>


<br><br><br><br><br>

@stop

