<?php

use Illuminate\Database\Migrations\Migration;

class CreateWorkOrderList extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('work_order_list', function($table){
			$table->increments('id');
			$table->string('work_order_number');
			$table->string('client_id');
			$table->string('worksite_id');
			$table->string('billing_id');
			$table->string('time_in');
			$table->string('time_out');
			$table->string('billable_hours');
			$table->string('billable_rate');
			$table->string('work_order_status');
			$table->string('current_po_number');
			$table->longtext('work_order_notes');
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
		Schema::drop('work_order_list');
	}

}