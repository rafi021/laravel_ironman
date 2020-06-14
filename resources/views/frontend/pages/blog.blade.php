@extends('layouts.frontend_app', [
    'breadCrumb' => 'true',
    'pageName' => 'blogPost',
    'pageTitle' => 'Blog'
])

@section('frontend_content')
@include('blog._index_post')
@endsection