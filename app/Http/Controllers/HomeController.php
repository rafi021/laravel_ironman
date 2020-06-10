<?php

namespace App\Http\Controllers;

use App\ClientMessage;
use App\Mail\SendNewsLetter;
use App\User;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

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
        $count = ClientMessage::count();
        $clientMessage = ClientMessage::all();
        $time = now();

        // return view with compacting/binding data
        return view('home', compact('users', 'count', 'time', 'clientMessage'));

        // return view with binding manual data as an array
        //return view('home', ['users' => $users]);
    }

    public function sendnewsletter()
    {
        $users_email = ClientMessage::all()->pluck('email');
        foreach ($users_email as $email) {
            Mail::to($email)
                ->send(new SendNewsLetter());
        }
        return back()->with([
            'type' => 'success',
            'status' => 'News Letter Sent to all users in the list!!!',
        ]);
    }

    public function contactuploadsDownload($client_id)
    {
        return Storage::download(ClientMessage::findOrFail($client_id)->client_upload_file);
    }
}
