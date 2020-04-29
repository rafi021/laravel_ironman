<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{
    public function __construct()
    {
        return $this->middleware('auth');
    }

    public function index()
    {
        $users = User::all();
        $count = User::count();
        $time = now();

        // return view with compacting/binding data
        return view('admin.profile.index', compact('users', 'count', 'time'));

        // return view with binding manual data as an array
        //return view('home', ['users' => $users]);
    }

    public function editprofile()
    {
        return view('admin.profile.edit');
    }

    public function update(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
        ]);

        $user = User::find(Auth::id());
        $user->update([
            'name' => $request->name,
            'email' => $request->email,
        ]);
        return back()->with([
            'type' => 'success',
            'form-status' => 'User profile has been updated!!!',
        ]);
    }

    public function password_update(Request $request)
    {
        $request->validate([
            'old_password' => 'required',
            'password' => 'required|confirmed|min:8',
            'password_confirmation' => 'required',
        ]);

        $user = User::find(Auth::id());
        // check old password is correct or not
        if (Hash::check($request->old_password, $user->password)) {
            $user->update([
                'password' => Hash::make($request->password),
            ]);
            return back()->with([
                'type' => 'success',
                'form-password-status' => 'User password has been updated!!!',
            ]);
        } else {
            return back()->with([
                'type' => 'danger',
                'form-password-status' => 'Old user password is not matching with system!!!',
            ]);
        }
    }
}
