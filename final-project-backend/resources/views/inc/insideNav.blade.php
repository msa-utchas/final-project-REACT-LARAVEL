<link rel="stylesheet" href="{{ asset('css/insideNav.css') }}">
<div class="inside-nav">
    <a class="btn btn-success" href="{{ route('editProfile') }}"> edit ptofile</a>
    <a class="btn btn-success" href="{{ route('moderatorDashboard') }}">dashboard</a>

    <h4>{{ session()->get('moderator')['m_email'] }}</h4>
    <a class="btn btn-danger" href="{{ route('logout') }}">LOGOUT</a>
</div>
