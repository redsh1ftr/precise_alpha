<?php

use Illuminate\Database\Migrations\Migration;

class CreatePurchaseOrderList extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('purchase_order_list', function($table){
			$table->increments('id');
			$table->string('purchase_order_number');
			$table->string('work_order_number');
			$table->string('client_id');
			$table->string('worksite_id');
			$table->string('billing_id');
			$table->string('purchase_order_status');
			$table->string('purchase_order_notes');
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
		Schema::drop('purchase_order_list');
	}

}