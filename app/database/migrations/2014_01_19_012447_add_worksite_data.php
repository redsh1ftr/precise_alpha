<?php

use Illuminate\Database\Migrations\Migration;

class AddWorksiteData extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		
DB::table('worksite_list')->insert(array(
				'id' => '11',
				'worksite_name' => 'The Plumbery',
				'contact_first_name' => 'Alan',
				'contact_last_name' => 'Dikinmdf',
				'contact_phone_number' => '303-235-3647',
				'contact_fax_number' => '303-644-5757',
				'contact_email' => 'Alan@theplumbery.com',
				'open_hours' => 'Monday - Friday 9-5, Saturday 10-3',
				'worksite_street' => '486 Up Dr.',
				'worksite_city' => 'City City',
				'worksite_state' => 'MI',
				'worksite_zip' => '48360',
				'access_info' => 'Door in back, Keycard acess only.',
				'worksite_notes' => 'Interwoven is a line of content management systems and related products. Previously a stand-alone company headquartered in San Jose, California, USA and founded in 1995, it was acquired on March 17, 2009 by Autonomy, which in turn was acquired by Hewlett-Packard in 2011. The Interwoven and Autonomy product lines became known as HP Autonomy.',
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