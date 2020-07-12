<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckoutController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('frontend.pages.checkout', [
            'user' => User::find(Auth::id()),
        ]);
    }

    public function placeorder(Request $request)
    {
        dd($request->all());
    }
}
