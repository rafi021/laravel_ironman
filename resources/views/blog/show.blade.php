@extends('layouts.dashboard_app', ['activePage' => 'blogpost', 'titlePage' => __('Single blogpost')])

@section('breadcrub_content')
<nav class="breadcrumb sl-breadcrumb">
    <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
    <span class="breadcrumb-item active">BlogPost</span>
</nav>
@endsection

@section('dashboard_content')
@include('blog._show_post')
@endsection



