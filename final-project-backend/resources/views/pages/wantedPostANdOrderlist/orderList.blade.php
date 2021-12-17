@extends('layout.insideLayout')
@section('content')
@foreach($orderlist as $order)
    <p>order id:{{$order->o_id}}</p>
    <p>Order name :{{$order->o_name}}</p>
    <p>order type:{{$order->o_type}}</p>
    <p>order description:{{$order->o_description}}</p>
    <p>order price:{{$order->o_price}}</p>
    {{-- <p>{{$order->o_ordered_by}}</p> --}}
    <p>order posted by:{{$order->o_posted_by}}</p>
    <p>order time:{{$order->o_time}}</p>
    <p>order updated time:{{$order->o_updatetime}}</p>
    <p>---------------------------------------------</p>
@endforeach
@endsection
