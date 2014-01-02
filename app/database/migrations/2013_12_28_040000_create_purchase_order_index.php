<?php

use Illuminate\Database\Migrations\Migration;

class CreatePurchaseOrderIndex extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('purchase_order_index', function($table){
			$table->increments('id');
			$table->integer('client_id');
			$table->integer('purchase_order_number');
			$table->string('purchase_order_status');
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
			Schema::drop('purchase_order_index');
	}

}