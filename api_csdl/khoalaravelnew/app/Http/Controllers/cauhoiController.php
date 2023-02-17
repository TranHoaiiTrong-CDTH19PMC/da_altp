<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\cau_hoi;

class cauhoiController extends Controller
{
    public function danh_sach_cau_hoi(Request $request)
    {
        $cau_hoi = cau_hoi::where('linh_vuc',$request->linh_vuc)->get();
        return $cau_hoi;
    }
    public function tat_ca_cau_hoi()
    {
        $data=cau_hoi::all();
    	return($data);
    }
}
