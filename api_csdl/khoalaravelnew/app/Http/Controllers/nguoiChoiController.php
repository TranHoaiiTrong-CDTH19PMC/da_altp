<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\bang_dang_nhap;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class nguoiChoiController extends Controller
{
    public function dang_nhap(Request $request) 
    {
        // return $request->all();
        $credentials = $request->validate([
            'ten_dang_nhap' => ['required'],
            'password' => ['required']
        ]);

        if (Auth::attempt(['ten_dang_nhap' => $request->ten_dang_nhap, 'password' => $request->password])) {
            $request->session()->regenerate();
            $b = new bang_dang_nhap();
            $b->user_id = Auth::user()->id;
            $b->save();
            return Auth::user();
        }
        return "that_bai";
    }
    public function dang_ki(Request $request)
    {
       
        $User = User::where([
            'ten_dang_nhap' => $request->ten_dang_nhap,
        ])->first();
        if ($User) {
            return "ten_dang_nhap_da_ton_tai";
        }
        else{
            $User = new User();
            $User->ten_dang_nhap = $request->ten_dang_nhap;
            $User->password = Hash::make($request->password);
            $User->email = $request->email;
            $User->avatar="ko có";
            $User->diem_cao_nhat="0";
            $User->xoa=1;
            $User->save();
            return $User;
        }
    }
    public function doi_mat_khau(Request $request)
    {
        $b = bang_dang_nhap::orderBy('id','desc')->first();

        $User= User::find($b->user_id);
        // return $request->password;
        
        if ($request->password1 != $request->password2) {
            return "mat_khau_khong_trung_khop";
        }
        if (Auth::attempt(['ten_dang_nhap' => $User->ten_dang_nhap, 'password' => $request->password])) {
            $user_login = User::find(Auth::user()->id);
            
            $user_login->password = Hash::make($request->password1);
        
            $user_login->save();
            return $user_login;
        }

            return "mat_khau_khong_dung";
        
    }
    public function user_info()
    {
        $b = bang_dang_nhap::orderBy('id','desc')->first();
        return  User::find($b->user_id)->ten_dang_nhap;

    } 
    public function avatar()
    {
        $b = bang_dang_nhap::orderBy('id','desc')->first();
        return  User::find($b->user_id)->avatar;

    }
    public function send_mail_diem(Request $request)
    {
        Mail::send('mailfb', array('ten_dang_nhap' => Auth::user()->ten_dang_nhap, 'diem' => $request->diem), function ($message) {
            $message->to(Auth::user()->email, 'Mail')->subject('Số điểm sau khi chơi là');
        });
    }
    public function update_user(Request $request)
    {
        $b = bang_dang_nhap::orderBy('id','desc')->first();
        $user = User::find($b->user_id);
        $user->ten_dang_nhap = $request->input('ten_dang_nhap', $user->ten_dang_nhap);
        $user->email = $request->input('email', $user->email);
        $user->avatar = $request->input('avatar', $user->avatar);
        
        $user->save();
        return $user;
    }
}
