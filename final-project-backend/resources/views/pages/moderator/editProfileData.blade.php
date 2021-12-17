@extends('layout.insideLayout')
@section('content')

{{--    $moderator->ma_name=$request->ma_name;--}}
{{--    $moderator->ma_uname=$request->ma_uname;--}}
{{--    $moderator->ma_password=$request->ma_password;--}}
{{--    $moderator->ma_phone=$request->ma_phone;--}}
{{--    $moderator->ma_email=$request->ma_email;--}}
{{--    $moderator->ma_dob=$request->ma_dob;--}}
{{--    $moderator->ma_gender=$request->ma_gender;--}}
{{--    $moderator->ma_address=$request->ma_address;--}}
{{--    $moderator->ma_reason=$request->ma_reason;--}}
    <form action="{{route('editProfile')}}" method="POST">
        @csrf
        <label for="ma_name">Full Name: </label>
        <input type="text" name="ma_name" placeholder="Name" value="{{$moderator->m_name}}">



        <label for="ma_phone">Phone Number: </label>
        <input type="text" name="ma_phone" placeholder="Phone Number" value="{{$moderator->m_phone}}">



        <label for="ma_dob">Birth Date:</label>
        <input type="date" name="ma_dob" value="{{$moderator->m_dob}}">



        <label for="ma_address">Address: </label>
        <input type="text" name="ma_address" placeholder="Full Address" value="{{$moderator->m_address}}">

        <input type="hidden" name="ma_id" value="{{$moderator->m_id}}">

        <button type="submit"> update profile</button>


    </form>
@endsection
