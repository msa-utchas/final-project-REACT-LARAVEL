<?php

namespace App\Http\Controllers\Moderator;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Decoapprovallist;
use App\Models\Decorator;


class DecoratorController extends Controller
{
    function viewDecoratorSignupRequests()
    {
        $data = Decoapprovallist::all();
        return response($data);
    }
    function approveDecorator(Request $request)
    {
        $decorator = new Decorator();
        $data = Decoapprovallist::where('dapp_id', $request->dapp_id)->first();

        $decorator->d_uname = $data->dapp_uname;
        $decorator->d_name = $data->dapp_name;
        $decorator->d_password = $data->dapp_password;
        $decorator->d_phone = $data->dapp_phone;
        $decorator->d_email = $data->dapp_email;
        $decorator->d_address = $data->dapp_address;
        $decorator->d_yoe = $data->dapp_yoe;
        $decorator->save();
        $data->delete();
        return "accepted";

    }

    function rejectDecorator(Request $request)
    {
        $data = Decoapprovallist::where('dapp_id', $request->dapp_id)->first();
        $data->delete();
        return "deleted";
    }
}
