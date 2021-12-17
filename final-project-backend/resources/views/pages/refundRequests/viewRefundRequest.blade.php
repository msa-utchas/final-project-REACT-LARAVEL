@extends('layout.insideLayout')
@section('content')
    <h1>refund request</h1>
    @foreach($refundRequests as $request)
        <p>Id:{{$request->	r_id}}</p>
        <p>refund request from:{{$request->r_from }}</p>
        <p>refund request to:{{$request->r_to }}</p>
        <p>name of the add:{{$request->r_addname}}</p>
        <p>price:{{$request->r_addprice}}</p>
        <p>type:{{$request->r_r_addtype}}</p>
        <p>add description:{{$request->r_adddescription}}</p>
        <p>refund reason:{{$request->r_reason}}</p>

        <a href="/accept_refund_requests/{{$request->r_id}}">accept req</a>
        <a href="/reject_refund_requests/{{$request->r_id}}">reject req</a><br>
    @endforeach
@endsection
