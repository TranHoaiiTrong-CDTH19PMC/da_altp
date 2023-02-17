<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class nguoichoiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $nguoi_choi = new User();
        $nguoi_choi->ten_dang_nhap = "anhkhoa";
        $nguoi_choi->password =  Hash::make('123456');
        $nguoi_choi->email = "anhkhoa@gmail.com";
        $nguoi_choi->avatar = "a";
        $nguoi_choi->diem_cao_nhat = "0";
        $nguoi_choi->xoa="0"; 
        $nguoi_choi->save();
    }
}
