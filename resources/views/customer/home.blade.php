@extends('layouts.dashboard_app', ['activePage' => 'home', 'titlePage' => __('DashBoard')])

@section('breadcrub_content')
<nav class="breadcrumb sl-breadcrumb">
    <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
    <span class="breadcrumb-item active">Dashboard</span>
</nav>
@endsection

@section('dashboard_content')
<h4>You are customer</h4>
@endsection