@extends('layout.insideLayout')
@section('content')
    <h1>decorator request list</h1>
    @foreach ($decorators as $decorator)
         <p>decorator id:{{ $decorator->dapp_id }}</p>
         <p> decorator Username:{{ $decorator->dapp_uname }}</p>
         <p> decorator full name:{{ $decorator->ddapp_name }}</p>
         {{-- <p>{{ $decorator->dapp_password }}</p> --}}
         <p>phone number:{{ $decorator->dapp_phone }}</p>
         <p>email:{{ $decorator->dapp_email }}</p>
         <p>Address:{{ $decorator->dapp_address }}</p>
         {{-- <p>{{ $decorator->dapp_id }}</p> --}}
         <p>years of experience :{{ $decorator->dapp_yoe }}</p>




         <a href="/approve_decorator_signup_request/{{$decorator->dapp_id}}">approve</a>
         <a href="/reject_decorator_signup_request/{{$decorator->dapp_id}}">reject</a>
    @endforeach
@endsection

{{--$decorator->d_uname = $data->dapp_uname;--}}
{{--$decorator->d_name = $data->dapp_name;--}}
{{--$decorator->d_password = $data->dapp_password;--}}
{{--$decorator->d_phone = $data->dapp_phone;--}}
{{--$decorator->d_email = $data->dapp_email;--}}
{{--$decorator->d_address = $data->dapp_address;--}}
{{--$decorator->d_yoe = $data->dapp_yoe;--}}
