<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class User extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {

            $table->id();
            $table->string('ten_dang_nhap');
            $table->string('password');
            $table->string('email');
            $table->string('avatar');
            $table->string('diem_cao_nhat');
            $table->integer('xoa');
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
