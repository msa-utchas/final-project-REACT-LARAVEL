@extends('layout.insideLayout')
@section('content')
<h1>dashboard</h1>

{{-- <h1>{{ session()->get('moderator')['m_email'] }}</h1> --}}
{{-- <a class="btn btn-success" href="{{route('logout')}}">LOGOUT</a> --}}
<a class="btn btn-success" href="{{route('decoratorSignupRequestList')}}"> decoretor req list</a>
<a class="btn btn-success" href="{{route('refundRequest')}}"> refund request</a>
<a class="btn btn-success" href="{{route('wantedPost')}}">wanted post</a>

@endsection

