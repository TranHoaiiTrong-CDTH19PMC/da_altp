<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\nguoiChoiController;

use App\Http\Controllers\cauhoiController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => ['api']], function () {
    Route::get('/dang-nhap', [nguoiChoiController::class, 'dang_nhap']);
    Route::get('/dang-ki', [nguoiChoiController::class, 'dang_ki']);
    Route::get('/doi-mat-khau', [nguoiChoiController::class, 'doi_mat_khau']);
    Route::get('/update-user', [nguoiChoiController::class, 'update_user']);
    Route::get('/send-mail-diem', [nguoiChoiController::class, 'send_mail_diem']);
    Route::get('/avatar', [nguoiChoiController::class, 'avatar']);

    Route::get('/user-info', [nguoiChoiController::class, 'user_info']);
    Route::get('/danh-sach-cau-hoi', [cauhoiController::class, 'danh_sach_cau_hoi']);
    Route::get('/tat-ca-cau-hoi', [cauhoiController::class, 'tat_ca_cau_hoi']);
});


