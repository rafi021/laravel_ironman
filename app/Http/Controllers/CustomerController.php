<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Support\Facades\Auth;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function home($coupon_name = "")
    {
        return view('customer.home', [
            'orders' => Order::with(['orderDetails', 'billing', 'shipping', 'paymentMethod'])
                ->where('user_id', Auth::id())
                ->get(),
            'count' => Order::count(),
        ]);
    }
}
