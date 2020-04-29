<?php

namespace App\Http\Controllers;

use App\User;

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
}
