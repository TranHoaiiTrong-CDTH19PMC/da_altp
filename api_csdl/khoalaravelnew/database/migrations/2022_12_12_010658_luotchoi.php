<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Luotchoi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('luoi_choi', function (Blueprint $table) {

            $table->id();
            $table->bigInteger('nguoi_choi_id');
            $table->bigInteger('so_cau');
            $table->bigInteger('diem');
            $table->timestamps();
            $table->softDeletes();
    
            });  
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
