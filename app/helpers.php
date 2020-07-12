<?php

use Illuminate\Support\Facades\Cookie;

function total_product_count()
{
    return App\Product::count();
}

function total_cart_count()
{
    return App\Cart::where('generated_cart_id', Cookie::get('g_cart_id'))->count();
}

function cart_items()
{
    return App\Cart::where('generated_cart_id', Cookie::get('g_cart_id'))->with('product')->get();
}

function wish_items()
{
    return App\Wishlist::where('generated_wish_id', Cookie::get('g_wish_id'))->with('product')->get();
}

function total_wish_count()
{
    return App\Wishlist::where('generated_wish_id', Cookie::get('g_wish_id'))->count();
}
