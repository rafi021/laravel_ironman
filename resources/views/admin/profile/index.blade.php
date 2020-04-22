@extends('layouts.app', ['activePage' => 'contact', 'titlePage' => __('Add Contact')])

@section('content')
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8 col-md-6 m-auto">
                <div class="card">
                    <div class="card-header card-header-success">
                        <h4 class="card-title">Edit Profile Form</h4>
                        <p class="card-category">profile edit form</p>
                    </div>
                    <div class="card-body">
                            {{-- Laravel 7 Components Features  --}}
                            <x-alert :type="session('type')" :message="session('form-status')"/>
                        <form action=" {{ route('profile.update') }} " method="post" autocomplete="off" autofocus>
                            @csrf
                            <x-input-text type="text" labelName="Name" placeholderName="Profile Name" varName="name" :dbvalue="Auth::user()->name"/>
                            <x-input-text type="email" labelName="Email Address" placeholderName="Profile Email Address" varName="email" :dbvalue="Auth::user()->email"/>
                            <div class="card-footer">
                                <button class="btn btn-success" type="submit"> {{ __('Update') }} </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-lg-8 col-md-6 m-auto">
                <div class="card">
                    <div class="card-header card-header-success">
                        <h4 class="card-title">Edit Profile Password Form</h4>
                        <p class="card-category">profile password edit form</p>
                    </div>
                    <div class="card-body">
                            {{-- Laravel 7 Components Features  --}}
                            <x-alert :type="session('type')" :message="session('form-password-status')"/>
                        <form action=" {{ route('profile.password') }} " method="post" autocomplete="off" autofocus>
                            @csrf
                            <x-input-text type="password" labelName="Old Password" placeholderName="Enter Old Password" varName="old_password" dbvalue=""/>
                            <x-input-text type="password" labelName="New Password" placeholderName="Enter New Password" varName="password" dbvalue=""/>
                            <x-input-text type="password" labelName="Confirm Password" placeholderName="Enter Confirm Password" varName="password_confirmation" dbvalue=""/>
                            <div class="card-footer">
                                <button class="btn btn-info" type="submit"> {{ __('Update') }} </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

{{-- <script src="{{ asset('js/password_show.js') }}"></script> --}}
    
<script>
    function viewPassword_old_password(){
        let x = document.getElementById('input-old_password');
        if (x.type === "password") {
            x.type = "text";
            } else {
            x.type = "password";
            }
    }
    function viewPassword_password(){
        let x = document.getElementById('input-password');
        if (x.type === "password") {
            x.type = "text";
            } else {
            x.type = "password";
            }
    }
    function viewPassword_password_confirmation(){
        let x = document.getElementById('input-password_confirmation');
        if (x.type === "password") {
            x.type = "text";
            } else {
            x.type = "password";
            }
    }
</script>