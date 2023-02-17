<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChiTietLuotChoi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chi_tiet_luot_choi', function (Blueprint $table) {

            $table->id();
            $table->bigInteger('luot_choi_id');
            $table->bigInteger('cau_hoi_id');
            $table->string('phuong_an');
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
