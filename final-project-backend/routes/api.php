<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Moderator\ModeratorController;
use App\Http\Controllers\Moderator\DecoratorController;
use App\Http\Controllers\Moderator\RefundRequestController;
use App\Http\Controllers\Moderator\WantedPostAndOrderlistController;

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

//Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//    return $request->user();
//});
Route::post('/moderator/signup',[ModeratorController::class,"signUp"]);
Route::post('/moderator/login',[ModeratorController::class,'verifyLogin']);

Route::post('/moderator/logout',[ModeratorController::class,'logout'])->middleware('ModeratorAPIAuth');
Route::get('/moderator/decorator_signup_request_list', [DecoratorController::class, 'viewDecoratorSignupRequests'])->middleware('ModeratorAPIAuth');
Route::post('/moderator/approve_decorator_signup_request/{dapp_id}', [DecoratorController::class, 'approveDecorator'])->middleware('ModeratorAPIAuth');
Route::post('/moderator/reject_decorator_signup_request/{dapp_id}', [DecoratorController::class, 'rejectDecorator'])->middleware('ModeratorAPIAuth');


Route::get('/moderator/refund_requests', [RefundRequestController::class, 'viewRefundRequestPage'])->middleware("ModeratorAPIAuth");
Route::post('/moderator/reject_refund_requests/{r_id}', [RefundRequestController::class, 'rejectRefundRequest'])->middleware("ModeratorAPIAuth");
Route::post('/moderator/accept_refund_requests/{r_id}', [RefundRequestController::class, 'acceptRefundRequest'])->middleware("ModeratorAPIAuth");

Route::get('/moderator/order_list', [WantedPostAndOrderlistController::class, 'viewOrderlist'])->middleware("ModeratorAPIAuth");


