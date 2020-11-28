<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('details', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('name');
            $table->string('category');
            $table->string('company_name');
            $table->string('mobile_no');
            $table->string('place');
            $table->string('service_req');
            $table->string('next_step');
            $table->string('remark');
            $table->string('proposed_fee');
            $table->string('date');
            $table->string('status');
            $table->string('inv_date');
            $table->string('billing_amnt');
            $table->string('payment_status');
            $table->string('payment_date');
            $table->string('amnt_recieve');
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
        Schema::dropIfExists('details');
    }
}
