<?php

use Illuminate\Database\Migrations\Migration;

class AddClientData extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
//Insert GOOD data into tables		
		DB::table('client_list')->insert(array(
				'client_id' => '4050',
				'business_name' => 'The Electric Company',
				'business_type' => 'Interior Maintenance',
				'net_terms' => '30',
				'current_job_number' => '014',
				'open_hours' => 'Monday - Friday 9-5, Saturday 10-3'
				
			));

		DB::table('client_list')->insert(array(
				'client_id' => '4051',
				'business_name' => 'The Plumbing Company',
				'business_type' => 'Interior Maintenance',
				'net_terms' => '30',
				'current_job_number' => '009',
				'open_hours' => 'Monday - Friday 9-5, Saturday 10-3'
				
			));

	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
	}

}