<?php

namespace App\Http\Controllers;

use App\Category;
use App\ClientMessage;
use App\Product;
use App\Testimonial;
use Carbon\Carbon;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
    {

        return view('frontend.index', [
            'categories' => Category::all(),
            'products' => Product::latest()->take(8)->get(),
            'testimonials' => Testimonial::latest()->take(4)->get(),
        ]);
    }

    public function contactus()
    {
        return view('frontend.contact');
    }

    public function about()
    {
        return view('frontend.about');
    }

    public function service()
    {
        return view('service');
    }

    public function clientMessage(Request $request)
    {
        $request->validate([
            'fname' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
        ]);

        ClientMessage::insert([
            'fname' => $request->input('fname'),
            'email' => $request->input('email'),
            'subject' => $request->input('subject'),
            'msg' => $request->input('msg'),
            'created_at' => Carbon::now(),
        ]);

        return back()->with([
            'success_status' => 'Thanks for you Message, we will soon get back to you',
            'type' => 'success',
        ]);
    }
}
