<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Cauhoi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cau_hoi', function (Blueprint $table) {

            $table->id();
            $table->string('linh_vuc');
            $table->string('noi_dung');
            $table->string('phuong_an_a');
            $table->string('phuong_an_b');
            $table->string('phuong_an_c');
            $table->string('phuong_an_d');
            $table->string('dap_an');
            $table->timestamps();
            $table->softDeletes();
    
            });    }

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
