<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCartridgesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cartridges', function (Blueprint $table) {
            // $table->increments('id');
            // $table->integer('osCartridge_id');
            // $table->string('mark');
            // $table->string('number');
            // $table->string('serialNumber');
            // $table->decimal('price');
            // $table->string('state');
            // $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('cartridges');
    }
}
