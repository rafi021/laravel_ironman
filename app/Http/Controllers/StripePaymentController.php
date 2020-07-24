<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Stripe;

class StripePaymentController extends Controller
{
    public function stripe()
    {

        return view('Payment.stripe.stripe');
    }

    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripePost(Request $request)
    {
        $order = Order::find($request->input('order_id'));
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        Stripe\Charge::create([
            "amount" => $order->total * 100,
            "currency" => "usd",
            "source" => $request->stripeToken,
            "description" => "Order #" . $order->id . " payment has been done",
        ]);

        Session::flash('success', 'Payment successful!');

        return redirect()->route('cart.index');
    }
}
