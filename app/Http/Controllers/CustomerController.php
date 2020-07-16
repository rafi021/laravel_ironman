<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Coupon;
use Carbon\Carbon;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function home($coupon_name = "")
    {
        $error_message = '';
        $subtotal = 0;
        $discount_amount = 0;

        if ($coupon_name == "") {
            $error_message = "";
        } else {
            if (!Coupon::where('coupon_name', $coupon_name)->exists()) {
                $error_message = "This coupon is invalid!!!!";
            } else {
                $couponValidity = Coupon::where('coupon_name', $coupon_name)->first()->validity_till;
                $todayDate = Carbon::now()->format('Y-m-d');

                // now check coupon validity
                if ($todayDate > $couponValidity) {
                    // if not valid
                    $error_message = "This coupon has been expired";
                } else {
                    // if valid, then check purchase amount
                    foreach (cart_items() as $cart_item) {
                        $subtotal += ($cart_item->product->product_price * $cart_item->product_quantity);
                    }
                    // if purchase amount is greather than minimum puchase amount
                    if (Coupon::where('coupon_name', $coupon_name)->first()->minimum_purchase_amount > $subtotal) {
                        // else throw an error message
                        $error_message = "You have to purchase: " . Coupon::where('coupon_name', $coupon_name)->first()->minimum_purchase_amount;
                    } else {
                        // then allow the discount amount
                        $discount_amount = Coupon::where('coupon_name', $coupon_name)->first()->discount_amount;
                    }
                }
            }
        }

        $valid_coupons = Coupon::whereDate('validity_till', '>=', Carbon::now()->format('Y-m-d'))->get();
        return view('customer.home', [
            'cart' => Cart::all(),
            'error_message' => $error_message,
            'discount_amount' => $discount_amount,
            'coupon_name' => $coupon_name,
            'valid_coupons' => $valid_coupons,
        ]);
    }
}
