@extends('layout.outsideApp')
<link rel="stylesheet" href="{{asset("css/login.css")}}">
@section('content')
    {{--    @if ($errors->any())--}}
    {{--        <div class="alert alert-danger">--}}
    {{--            <ul>--}}
    {{--                @foreach ($errors->all() as $error)--}}
    {{--                    <li>{{ $error }}</li>--}}
    {{--                @endforeach--}}
    {{--            </ul>--}}
    {{--        </div>--}}
    {{--    @endif--}}
    <form action="{{route('login')}}" method="post">
        <div class="login-container">
            @csrf
            <label for="m_email">Email: </label>
            <input type="text" name="m_email" placeholder="Enter Your Email">
            @error('m_email')
            <p>{{ $message }}</p>
            @enderror

            <label for="m_password">Password: </label>
            <input type="password" name="m_password" placeholder="Enter Your Password">
            @error('m_password')
            <p>{{ $message }}</p>
            @enderror

            <button type="submit">SUBMIT</button>
        </div>
    </form>
@endsection
