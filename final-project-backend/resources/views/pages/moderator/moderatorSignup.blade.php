@extends('layout.outsideApp')
<link rel="stylesheet" href="{{asset('css/signup.css')}}">
@section('content')
    <h1>signup</h1>
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{route('signup')}}" method="POST">
        @csrf
        <div class="signup-container">
            <label for="ma_name">Full Name: </label>
            <input type="text" name="ma_name" placeholder="Name">

            <label for="ma_uname"> User name: </label>
            <input type="text" name="ma_uname" placeholder="User name">

            <label for="ma_password">Password: </label>
            <input type="password" name="ma_password">

            <label for="ma_phone">Phone Number: </label>
            <input type="text" name="ma_phone" placeholder="Phone Number">

            <label for="ma_email">Email: </label>
            <input type="text" name="ma_email" placeholder="Email">

            <label for="ma_dob">Birth Date:</label>
            <input type="date" name="ma_dob">

            <label for="ma_gender">Select Gender: </label>
            <select name="ma_gender" class="form-select">
                <option selected value="male">Male</option>
                <option value="female">Female</option>
                <option value="others">Others</option>
            </select>

            <label for="ma_address">Address: </label>
            <input type="text" name="ma_address" placeholder="Full Address">

            <label for="ma_reason">Reason: </label>
            <input type="text" name="ma_reason" placeholder="Describe Reason">
            <button type="submit"> signup</button>

        </div>
    </form>
@endsection
