<?php

//use App\Http\Controllers\ModeratorController;
use App\Http\Controllers\DecoratorController;
use App\Http\Controllers\ModeratorController;
use App\Http\Controllers\RefundRequestController;
use App\Http\Controllers\WantedPostAndOrderlistController;
use App\Models\Refundrequest;
use Illuminate\Support\Facades\Route;

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
//--------------------------------------------------------
Route::get('/', [ModeratorController::class, 'rootRoute']);
//-------------------------------------------------------
//Route::get('/signup', [ModeratorController::class, 'showSignupPage'])->name('signup');
//Route::post('/signup', [ModeratorController::class, 'verifySignup'])->name('signup');


//Route::get('/login', [ModeratorController::class, 'showLoginPage'])->name('login');
//Route::post('/login', [ModeratorController::class, 'verifyLogin'])->name('login');

//Route::get('/moderator_dashboard', [ModeratorController::class, 'showModeratorDashboardPage'])->name('moderatorDashboard')->middleware("ModeratorLoginAuth");
//Route::get('/logout', [ModeratorController::class, 'moderatorLogout'])->name('logout');

//----------------------------------------------------------------------------------
//Route::get('/decorator_signup_request_list', [DecoratorController::class, 'viewDecoratorSignupRequests'])->name('decoratorSignupRequestList')->middleware('ModeratorLoginAuth');
//Route::get('/approve_decorator_signup_request/{dapp_id}', [DecoratorController::class, 'approveDecorator'])->name('approveDecoratorSignupRequest')->middleware('ModeratorLoginAuth');
//Route::get('/reject_decorator_signup_request/{dapp_id}', [DecoratorController::class, 'rejectDecorator'])->name('rejectDecoratorSignupRequest')->middleware('ModeratorLoginAuth');
//------------------------------------
//Route::get('/refund_requests', [RefundRequestController::class, 'viewRefundRequestPage'])->name('refundRequest')->middleware("ModeratorLoginAuth");
//Route::get('/reject_refund_requests/{r_id}', [RefundRequestController::class, 'rejectRefundRequest'])->name('rejectRefundRequest')->middleware("ModeratorLoginAuth");
//Route::get('/accept_refund_requests/{r_id}', [RefundRequestController::class, 'acceptRefundRequest'])->name('acceptRefundRequest')->middleware("ModeratorLoginAuth");
//-------------------------------------
Route::get('/edit_profile',[ModeratorController::class,'viewEditProfilePage'])->name('editProfile')->middleware("ModeratorLoginAuth");
Route::post('/edit_profile',[ModeratorController::class,'updateModeratorProfile'])->name('editProfile')->middleware("ModeratorLoginAuth");
//---------------------------------

Route::get('/wanted_post', [WantedPostAndOrderlistController::class, 'viewWantedPost'])->name('wantedPost')->middleware("ModeratorLoginAuth");
Route::get('/wanted_post/{wp_id}', [WantedPostAndOrderlistController::class, 'deleteWantedPost'])->middleware("ModeratorLoginAuth");
//Route::get('/order_list', [WantedPostAndOrderlistController::class, 'viewOrderlist'])->name('orderlist')->middleware("ModeratorLoginAuth");


