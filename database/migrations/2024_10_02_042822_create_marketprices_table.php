<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('marketprices', function (Blueprint $table) {
            $table->id();
            $table->string('crop');
            $table->string('activity');
            $table->string('city'); // Add city if needed
            $table->string('kg');
            $table->string('pricecolumn');
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
        Schema::dropIfExists('marketprices');
    }
};
