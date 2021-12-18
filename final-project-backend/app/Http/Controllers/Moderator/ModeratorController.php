<?php

namespace App\Http\Controllers\Moderator;

use App\Http\Controllers\Controller;
use App\Models\Moderator;
use App\Models\Moderatorapprovallist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\Token;
use DateTime;

class ModeratorController extends Controller
{
    function signUp(Request $request)
    {
        $validator = Validator::make($request->all(),
            [
                'ma_name' => 'required|min:4|max:30',
                'ma_uname' => 'required|unique:moderatorapprovallist|min:4',
                'ma_password' => 'required|min:6',
                'ma_phone' => 'required|numeric',
                'ma_email' => 'required|unique:moderatorapprovallist|email',
                'ma_dob' => 'required',
                'ma_address' => 'required',
                'ma_reason' => 'required',

            ],
            [
                'ma_name.required' => 'please enter your full name',
                'ma_name.min' => 'name can contain minimum 4 character',
                'ma_name.max' => 'name can contain maximum 30 character',
                'ma_uname.required' => 'please enter your user name',
                'ma_uname.min' => 'user name can contain minimum 4 character',
                'ma_uname.unique' => 'User name is already taken',
                'ma_email.required' => 'please enter your email',
                'ma_email.email' => 'please enter valid email',
                'ma_email.unique' => 'Account with this email is already taken',
                'ma_password.required' => 'please enter your password',
                'ma_password.min' => 'password must contain 6 character',
                'ma_phone.required' => 'Enter a valid phone number',
                'ma_phone.numeric' => 'Only use Numbers',
                'ma_dob.required' => 'Date of Birth is required',

                'ma_address.required' => 'address field is required',
                'ma_reason.required' => 'write the valid reason',
            ]);
        if ($validator->fails()) {
            return response()->json([
                "validation_errors" => $validator->messages(),
            ]);

        } else {
            $moderator = new Moderatorapprovallist();
            $moderator->ma_name = $request->ma_name;
            $moderator->ma_uname = $request->ma_uname;
            $moderator->ma_password = $request->ma_password;
            $moderator->ma_phone = $request->ma_phone;
            $moderator->ma_email = $request->ma_email;
            $moderator->ma_dob = $request->ma_dob;
            $moderator->ma_gender = $request->ma_gender;
            $moderator->ma_address = $request->ma_address;
            $moderator->ma_reason = $request->ma_reason;
            $moderator->save();

            return response()->json([
                "status" => 200,
                "message" => "Moderator signup successful"
            ]);
        }
    }

    function verifyLogin(Request $request)
    {
//        $validate = $request->validate(
//            [
//                'm_email' => 'required|email',
//                'm_password' => 'required|min:6'
//            ],
//            [
//                'm_email.required' => 'please enter your email',
//                'm_email.email' => 'please enter valid email',
//                'm_password.required' => 'please enter your password',
//                'm_password.min' => 'password must contain 6 character',
//            ]
//        );

        $data = Moderator::where('m_email', $request->m_email)
            ->where('m_password', $request->m_password)
            ->first();
        if ($data) {
            $api_token = Str::random(64);
            $token = new Token();
            $token->userid = $data->m_id;
            $token->token = $api_token;
            $token->created_at = new DateTime();
            $token->save();
            return $token;

        } else {
            return "no moderator found";
        }
    }

    function logout(Request $request)
    {
        $token = $request->header("Authorization");
        $validToken = Token::where('token', $token)->first();
        $validToken->expired_at = new DateTime();
        $validToken->save();
        return "logout";
    }

}
