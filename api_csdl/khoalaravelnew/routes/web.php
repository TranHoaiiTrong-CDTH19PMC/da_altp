<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\nguoiChoiController;

use App\Http\Controllers\cauhoiController;
use App\Jobs\SendingEmail;
use Illuminate\Support\Facades\Mail;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', function () {
    return view('form');
});
// Route::get('/dang-nhap', [nguoiChoiController::class, 'dang_nhap']);
// Route::get('/dang-ki', [nguoiChoiController::class, 'dang_ki']);
// Route::get('/doi-mat-khau', [nguoiChoiController::class, 'doi_mat_khau']);
// Route::get('/update-user', [nguoiChoiController::class, 'update_user']);
// Route::get('/send-mail-diem', [nguoiChoiController::class, 'send_mail_diem']);

// Route::get('/user-info', [nguoiChoiController::class, 'user_info']);
// Route::get('/danh-sach-cau-hoi', [cauhoiController::class, 'danh_sach_cau_hoi']);
// Route::get('/tat-ca-cau-hoi', [cauhoiController::class, 'tat_ca_cau_hoi']);


// Route::get('test-send-mail', function () {
//     // $mailForTesting = new SendingEmail();
//     // return $mailForTesting;
//     // dispatch($mailForTesting);
//     // dispatch($mailForTesting)->delay(now()->addMinutes(2));
//     // return "dsfs";
//     Mail::send('mailfb', array('name'=>"quang vinh",'email'=>"dangquangvinh"), function($message){
//         $message->to('', 'Mail')->subject('Troi oi cai gi day!');
//     });
// });
