<?php

namespace App\Http\Controllers;

use App\Billing;
use App\City;
use App\Country;
use App\Shipping;
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
            'countries' => Country::all(),
        ]);
    }

    public function placeorder(Request $request)
    {
        // if different shipping address
        if ($request->input('custom_shipping_status')) {
            Shipping::insert([
                'name' => $request->input('shipping_name'),
                'email' => $request->input('shipping_email'),
                'phone_number' => $request->input('shipping_phone_number'),
                'address' => $request->input('shipping_address'),
                'country_id' => $request->input('shipping_country_id'),
                'city_id' => $request->input('shipping_city_id'),
                'order_notes' => $request->input('shipping_order_notes'),
                'payment_method' => $request->input('payment_method'),
            ]);
        } else { // if billing and shipping address is same
            Shipping::insert([
                'name' => $request->input('name'),
                'email' => $request->input('email'),
                'phone_number' => $request->input('phone_number'),
                'address' => $request->input('address'),
                'country_id' => $request->input('country_id'),
                'city_id' => $request->input('city_id'),
                'order_notes' => $request->input('shipping_order_notes'),
                'payment_method' => $request->input('payment_method'),
            ]);
        }
        Billing::insert([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'phone_number' => $request->input('phone_number'),
            'address' => $request->input('address'),
            'country_id' => $request->input('country_id'),
            'city_id' => $request->input('city_id'),
            'order_notes' => $request->input('shipping_order_notes'),
            'payment_method' => $request->input('payment_method'),
        ]);

        //return back with success message
        return back()->with([
            'type' => 'success',
            'order_status' => 'Your Order placed successfully!!!!',
        ]);
    }

    public function getCityListAjax(Request $request)
    {
        // echo $request->input('country_id');
        // die();
        $stringToSend = "";
        $cities = City::where('country_id', $request->input('country_id'))->get();

        foreach ($cities as $city) {
            // $stringToSend .= $city->name;
            $stringToSend .= "<option value='" . $city->id . "'>" . $city->name . "</option>";
        }
        //echo $stringToSend;
        return $stringToSend;
    }
}
