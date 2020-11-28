<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsToDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('details', function (Blueprint $table) {
            //
              $table->string('meeting_date')->nullable();
              $table->string('pending_amount')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('details', function (Blueprint $table) {
            //
              $table->dropColumn('meeting_date');
                $table->dropColumn('pending_amount');
        });
    }
}
