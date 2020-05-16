<?php

namespace App\Http\Controllers;

use App\Mail\SendNewsLetter;
use App\User;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users = User::all();
        $count = User::count();
        $time = now();

        // return view with compacting/binding data
        return view('home', compact('users', 'count', 'time'));

        // return view with binding manual data as an array
        //return view('home', ['users' => $users]);
    }

    public function sendnewsletter()
    {
        $users_email = User::all()->pluck('email');
        foreach ($users_email as $email) {
            Mail::to($email)
                ->send(new SendNewsLetter());
        }
        return back()->with([
            'type' => 'success',
            'status' => 'News Letter Sent to all users in the list!!!',
        ]);
    }
}
