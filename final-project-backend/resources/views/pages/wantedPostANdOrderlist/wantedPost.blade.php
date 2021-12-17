@extends('layout.insideLayout')
@section('content')
@foreach($wantedPosts as $post)
    <P>post id: {{$post->wp_id }}</P>
    <P>post type:{{$post->wp_type }}</P>
    <P>buget:{{$post->wp_budget }}</P>
    <P>post Description{{$post->wp_description }}</P>
    <P>post Owner {{$post->wp_posted_by }}</P>
    <a href="/wanted_post/{{$post->wp_id}}">delete</a>

@endforeach

@endsection
