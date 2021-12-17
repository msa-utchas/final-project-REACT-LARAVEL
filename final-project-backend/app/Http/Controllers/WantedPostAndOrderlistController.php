<?php

namespace App\Http\Controllers;

use App\Models\Orderlist;
use App\Models\Wantedpost;
use Illuminate\Http\Request;

class WantedPostAndOrderlistController extends Controller
{
    function viewWantedPost()
    {
        $data=Wantedpost::all();
        return view('pages.wantedPostANdOrderlist.wantedPost')->with('wantedPosts', $data);

    }
    function deleteWantedPost(Request $request)
    {
        $data=Wantedpost::where('wp_id',$request->wp_id)->first();
        $data->delete();
        return redirect()->route("wantedPost");
    }
    function viewOrderlist()
    {
        $data=Orderlist::all();
        return view('pages.wantedPostANdOrderlist.orderList')->with('orderlist',$data);
    }
}
