$client_id1 = Input::get('client_id');
$client_id = DB::table('clientlists')->where('client_id', '=', $client_id1)->pluck('client_id');
$business_name = DB::table('clientlists')->where('client_id', '=', $client_id1)->pluck('business_name');
$business_type = DB::table('clientlists')->where('client_id', '=', $client_id1)->pluck('business_type');
$net_terms = DB::table('clientlists')->where('client_id', '=', $client_id1)->pluck('net_terms');
$current_wo_number = DB::table('clientlists')->where('client_id', '=', $client_id1)->pluck('current_job_number');