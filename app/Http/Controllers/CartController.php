<?php

namespace App\Http\Controllers;

use App\Cart;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Str;

class CartController extends Controller
{
    public function store(Request $request)
    {
        if (Cookie::get('g_cart_id')) {
            // if cookie is present then get the cart id from cookie facade
            $generated_cart_id = Cookie::get('g_cart_id');
        } else {
            // Else generate a random id to cart id cooke and then set it using cookie facade
            $generated_cart_id = Str::random(7) . rand(1, 1000);
            Cookie::queue('g_cart_id', $generated_cart_id, 1440); // name, value, $mintues
        }

        if (Cart::where('generated_cart_id', $generated_cart_id)->where('product_id', $request->input('product_id'))->exists()) {
            // product id is exists then increment product quantity
            Cart::where('generated_cart_id', $generated_cart_id)->where('product_id', $request->input('product_id'))->increment('product_quantity', $request->input('product_quantity'));
        } else {
            // no previous product id found
            Cart::insert([
                'generated_cart_id' => $generated_cart_id,
                'product_id' => $request->input('product_id'),
                'product_quantity' => $request->input('product_quantity'),
                'created_at' => Carbon::now(),
            ]);

        }
        return redirect()->back();
    }
}
