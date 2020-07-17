@extends('layouts.dashboard_app', ['activePage' => 'home', 'titlePage' => __('DashBoard')])

@section('breadcrub_content')
<nav class="breadcrumb sl-breadcrumb">
    <a class="breadcrumb-item" href="{{ route('home') }}">Home</a>
    <span class="breadcrumb-item active">Dashboard</span>
</nav>
@endsection

@section('dashboard_content')
<div class="col-lg-12 col-md-12 m-auto" >
    <div class="card">
        <div class="card-header tx-white bg-teal">
            <h4 class="card-title tx-white">List of Orders #{{ $count ?? '' }}</h4>
            <p class="card-product tx-white">
                <div class="row">
                    <a href="#" class="btn btn-primary">Order Traverse</a>
                </div>
            </p>
        </div>
        <div class="card-body table-responsive">
            @if(session('status'))
            <div class="row">
                <div class="col-sm-12">
                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss='alert' aria-label="close">
                            <i class="fa fa-close"></i>
                        </button>
                        <span>{{ session('status') }}</span>
                    </div>
                </div>
            </div>
            @endif
            <table class="table table-hover">
                <thead class="text-primary">
                    <th>#</th>
                    <th>order date</th>
                    <th>payment method</th>
                    <th>sub total</th>
                    <th>discount</th>
                    <th>total</th>
                </thead>
                <tbody>
                    @forelse ($orders as $order)
                        
                        <tr>
                            <td> {{ $loop->index+1 }} </td>
                            <td>{{ $order->created_at }}</td>
                            <td>{{ $order->paymentMethod->payment_name }}</td>
                            <td>{{ $order->sub_total }}</td>
                            <td>{{ $order->discount_amount }}({{ $order->coupon_name }})</td>
                            <td>{{ $order->total }}</td>
                        </tr>
                        <tr>
                            @foreach ($order->orderDetails as $item)    
                            <td colspan="50">{{ $item->product->product_name }}</td>
                            @endforeach
                        </tr>
                        <tr>
                            <td colspan="50">Billing Address: {{ $order->billing->name }},{{ $order->billing->address }}, {{ $order->billing->phone_number}}</td>
                        </tr>
                        <tr>
                            <td colspan="50">Shipping Address: {{ $order->shipping->name }},{{ $order->shipping->address }}, {{ $order->shipping->phone_number}}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="50">
                                <p class="text-center">No order Found !!!</p>
                            </td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
