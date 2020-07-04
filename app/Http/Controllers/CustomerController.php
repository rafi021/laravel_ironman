<?php

namespace App\Http\Controllers;

class CustomerController extends Controller
{
    public function home()
    {
        return view('customer.home');
    }
}
