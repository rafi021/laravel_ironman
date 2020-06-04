@extends('layouts.dashboard_app', ['activePage' => 'home', 'titlePage' => __('DashBoard')])

@section('breadcrub_content')
<nav class="breadcrumb sl-breadcrumb">
    <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
    <span class="breadcrumb-item active">Dashboard</span>
</nav>
@endsection

@section('dashboard_content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
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
                            <th scope="col">#</th>
                            <th scope="col">Client Name</th>
                            <th scope="col">Email Address</th>
                            <th scope="col">Subject</th>
                            <th scope="col">Message</th>
                            <th scope="col">Send at</th>
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
