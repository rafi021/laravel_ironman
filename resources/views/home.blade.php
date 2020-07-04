@extends('layouts.dashboard_app', ['activePage' => 'home', 'titlePage' => __('DashBoard')])

@section('breadcrub_content')
<nav class="breadcrumb sl-breadcrumb">
    <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
    <span class="breadcrumb-item active">Dashboard</span>
</nav>
@endsection

@section('dashboard_content')
<h4>
    @if (Auth::user()->user_role ==1)
        You are admin
    @else 
        You are customer
    @endif
</h4>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="card">
                <div class="card-header bg-teal-love">
                    <h4 class="card-title tx-dark">List of Client Messages #{{ $count ?? '' }}</h4>
                    <p class="card-category tx-dark">Lastest Client Messages {{ $time->format('d-M-Y')}}</p>
                    <a href="{{ route('newsletter') }}" class="btn btn-warning bg-teal">Send NewsLetter</a>
                </div>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <th>Client Name</th>
                            <th>Email Address</th>
                            <th>Subject</th>
                            <th>Message</th>
                            <th>Send at</th>
                            <th>File</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach ($clientMessage as $client)
                            <tr>
                                <td>{{ $client->id }}</td>
                                <td>{{ $client->fname }}</td>
                                <td>{{ $client->email }}</td>
                                <td>{{ $client->subject }}</td>
                                <td>{{ $client->msg }}</td>
                                <td>{{ $client->created_at->format('d-M-Y' ) }}</td>
                                <td>
                                    
                                    @if($client->client_upload_file)
                                    <a href="{{ asset('storage/') }}/{{ $client->client_upload_file }}">
                                        <i class="fa fa-file" aria-hidden="true"></i>
                                    </a>|
                                    <a href="{{ url('/contact/uploads/download') }}/{{ $client->id }}">
                                        <i class="fa fa-download" aria-hidden="true"></i>
                                    </a>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
