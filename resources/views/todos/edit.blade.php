@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 m-auto">
            <form action=" {{ route('todos.update', $todo) }} " method="post" class="form-horizontal" autocomplete="off">
                @csrf
                @method('put')
            <div class="card">
                <div class="card-header card-header-primary">
                    <h4 class="card-title">Edit Task</h4>
                    <p class="lead">Edit from task with description</p>
                </div>
                <div class="card-body">
                    <x-alert type="success" :message="session('todo-status')"/>
                    <div class="row">
                        <label for="" class="col-sm-2 col-form-label"> {{ __('Task Name') }} </label>
                        <div class="col-sm-7">
                            <div class="form-group {{ $errors->has('taskname') ? 'has-danger': '' }}">
                            <input type="text" name="taskname" class="form-control {{ $errors->has('taskname') ? 'is-invalid': ''}}" placeholder=" {{ __('Enter task Name/title') }}" value="{{ old('taskname', $todo->taskName ?? null) }}" required aria-required="true" id="input-taskname" >
                            @if ($errors->has('taskname'))
                                <span class="error text-danger" id="taskname-error">
                                    {{ $errors->first('taskname') }}
                                </span>
                            @endif
                            </div>
                        </div>    
                    </div>
                    <div class="row">
                        <label for="" class="col-sm-2 col-form-label"> {{ __('Task Description') }} </label>
                        <div class="col-sm-7">
                            <div class="form-group {{ $errors->has('taskdescription') ? 'has-danger': '' }}">
                            <textarea name="taskdescription" id="taskdescription-input" cols="30" rows="10" placeholder=" {{ __('Enter task description') }}" class="form-control {{ $errors->has('taskdescription') ? 'is-invalid' : '' }}" required aria-required="true">{{ old('taskdescription',$todo->taskDescription ?? null) }}</textarea>
                            @if ($errors->has('taskdescription'))
                                <span class="error text-danger" id="taskdescription-error">
                                    {{ $errors->first('taskdescription') }}
                                </span>
                            @endif
                            </div>
                        </div>    
                    </div>
                    <div class="card-footer ml-auto mr-auto">
                        <button class="btn btn-warning" type="submit"> {{ __('Update') }} </button>
                    </div>
                </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection