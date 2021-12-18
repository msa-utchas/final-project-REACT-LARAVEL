<?php

namespace App\Http\Controllers\moderator;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Orderlist;

class WantedPostAndOrderlistController extends Controller
{
    function viewOrderlist()
    {
        $data=Orderlist::all();
        return $data;
    }
}
