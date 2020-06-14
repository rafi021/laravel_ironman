@extends('layouts.dashboard_app', ['activePage' => 'blogpost', 'titlePage' => __('List blogpost')])

@section('breadcrub_content')
<nav class="breadcrumb sl-breadcrumb">
    <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
    <span class="breadcrumb-item active">BlogPost</span>
</nav>
@endsection
@section('dashboard_content')
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <a href="{{ route('posts.create') }}" class="btn btn-primary">Add New BlogPost</a>
        </div>
    </div>
</div>
@include('blog._index_post')

@endsection


