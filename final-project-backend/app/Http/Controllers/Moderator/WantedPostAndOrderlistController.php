<?php

namespace App\Http\Controllers\moderator;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Orderlist;
use App\Models\Wantedpost;

class WantedPostAndOrderlistController extends Controller
{
    function viewOrderlist()
    {
        $data=Orderlist::all();
        return $data;
    }
    function viewWantedPost()
    {
        $data=Wantedpost::all();
        return $data;

    }
    function deleteWantedPost(Request $request)
    {
        $data=Wantedpost::where('wp_id',$request->wp_id)->first();
        $data->delete();
        return response()->json([
            "status" => 200,
            "message" => "Post successfully deleted"
        ]);
    }
}
