<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEquipamentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('equipaments', function (Blueprint $table) {
        //     $table->increments('id');
        //     $table->integer('client_id');
        //     $table->string('serialNumber');
        //     $table->string('mark');
        //     $table->string('design');
        //     $table->string('observations');
        //     $table->string('problem');
        //     $table->timestamps();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('equipaments');
    }
}
