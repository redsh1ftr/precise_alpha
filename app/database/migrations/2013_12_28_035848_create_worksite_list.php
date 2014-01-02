<?php

use Illuminate\Database\Migrations\Migration;

class CreateWorksiteList extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('worksite_list', function($table){
			$table->increments('id');
			$table->string('worksite_name');
			$table->string('contact_first_name');
			$table->string('contact_last_name');
			$table->string('contact_phone_number');
			$table->string('contact_fax_number');
			$table->string('contact_email');
			$table->string('worksite_street');
			$table->string('worksite_street_1');
			$table->string('worksite_city');
			$table->string('worksite_state');
			$table->string('worksite_zip');
			$table->longtext('worksite_notes');
			$table->timestamps();

		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('worksite_list');
	}

}