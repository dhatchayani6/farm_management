<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cropdatas', function (Blueprint $table) {
            $table->id();
            $table->string('crop');
            $table->string('activity');
            $table->string('start_date');
            $table->string('end_date');
            $table->string('type_of_planting');
            $table->string('growth_period');
            $table->string('soil_type');
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
        Schema::dropIfExists('cropdatas');
    }
};
