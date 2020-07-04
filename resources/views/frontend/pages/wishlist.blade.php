@extends('layouts.frontend_app', [ 
    'breadCrumb' => 'true', 
    'pageName' => 'Wishlist', 
    'pageTitle' => 'Wishlist' 
    ]) 

@section('frontend_content')<!-- cart-area start -->
<div class="cart-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form action="{{ route('cart.store') }}" method="POST">
                    @csrf
                    <table class="table-responsive cart-wrap">
                        <thead>
                            <tr>
                                <th class="images">Image</th>
                                <th class="product">Product</th>
                                <th class="ptice">Price</th>
                                <th class="stock">Stock Stutus </th>
                                <th class="addcart">Add to Cart</th>
                                <th class="remove">Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                    <td class="images"><img src="assets/images/cart/4.jpg" alt=""></td>
                                    <td class="product"><a href="single-product.html">Coconut Oil</a></td>
                                    <td class="ptice">$139.00</td>
                                    <td class="stock">In Stock</td>
                                    <td class="addcart"><a href="cart.html">Add to Cart</a></td>
                                    <td class="remove"><i class="fa fa-times"></i></td>
                            </tr>
                        </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- cart-area end -->
@endsection