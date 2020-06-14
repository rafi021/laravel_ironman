@extends('layouts.frontend_app', [
    'breadCrumb' => 'true',
    'pageName' => 'About Us',
    'pageTitle' => 'Blog Details'
])

@section('frontend_content')
@include('blog._show_post')
@endsection