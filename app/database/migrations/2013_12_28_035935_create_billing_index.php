<?php

use Illuminate\Database\Migrations\Migration;

class CreateBillingIndex extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('billing_index', function($table){
			$table->increments('id');
			$table->integer('client_id');
			$table->integer('billing_id');
			$table->string('billing_company');
			$table->string('first_name');
			$table->string('last_name');
			$table->string('phone_number');
			$table->string('fax_number');
			$table->string('email');
			$table->longtext('billing_notes');
			$table->string('billing_street');
			$table->string('billing_city');
			$table->string('billing_state');
			$table->string('billing_zip');
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
		Schema::drop('billing_index');

	}

}