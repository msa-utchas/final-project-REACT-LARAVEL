<?php

namespace App\Http\Middleware;

use App\Models\Token;
use Closure;
use Illuminate\Http\Request;

class ModeratorAPIAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $token =$request->header("Authorization");
        $isvalid=Token::where('token',$token)->where('expired_at',NULL)->first();
        if($isvalid){
            return $next($request);
        }
        else{
//            return response("Invalid Token",401);
            return response($token,401);
        }

    }
}
