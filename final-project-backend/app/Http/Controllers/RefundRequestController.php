<?php

namespace App\Http\Controllers;

use App\Models\Acceptedrefundrequest;
use App\Models\Refundrequest;
use App\Models\Rejectedrefundrequest;
use Faker\Guesser\Name;
use Illuminate\Http\Request;

class RefundRequestController extends Controller
{
    function viewRefundRequestPage()
    {
        $data=Refundrequest::all();
        return view('pages.refundRequests.viewRefundRequest')->with('refundRequests',$data);
    }
    function acceptRefundRequest(Request $request)
    {

        $refundRequest = new Acceptedrefundrequest();
//        $data=Refundrequest::where('r_id',$request->r_id)->first();
        $data=Refundrequest::find($request->r_id);

        $refundRequest->r_from = $data-> r_from;
        $refundRequest->r_to = $data-> r_to;
        $refundRequest->r_addname = $data-> r_addname;
        $refundRequest->r_addprice = $data-> r_addprice;
        $refundRequest->r_addtype = $data-> r_addtype;
        $refundRequest->r_adddescription = $data-> r_adddescription;
        $refundRequest->r_reason = $data-> r_reason;
        $refundRequest->save();
        $data->delete();
        return redirect()->route('refundRequest');
    }
    function rejectRefundRequest(Request $request)
    {
        $refundRequest = new Rejectedrefundrequest();
//        $data=Refundrequest::where('r_id',$request->r_id)->first();
        $data=Refundrequest::find($request->r_id);

        $refundRequest->r_from = $data-> r_from;
        $refundRequest->r_to = $data-> r_to;
        $refundRequest->r_addname = $data-> r_addname;
        $refundRequest->r_addprice = $data-> r_addprice;
        $refundRequest->r_addtype = $data-> r_addtype;
        $refundRequest->r_adddescription = $data-> r_adddescription;
        $refundRequest->r_reason = $data-> r_reason;
        $refundRequest->save();
        $data->delete();
        return redirect()->route('refundRequest');
    }
}
