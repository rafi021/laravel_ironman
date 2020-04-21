@extends('layouts.app') 
@section('content') 
<div class="content"></div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">List of Tasks</h4>
                        <p class="lead">Task description with timing and active status</p>
                    </div>
                    <div class="card-body">
                        <x-alert type="success" :message="session('status')"/>
                        <div class="row">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <th>#</th>
                                        <th>Task Name</th>
                                        <th>Task Description</th>
                                        <th>Actions</th>
                                    </thead>
                                    <tbody>
                                        @forelse($todos as $todo)
                                        <tr>
                                            <td> {{ $loop->index+1 }} </td>
                                            @if($todo->taskStatus)
                                                <td class="text-danger" style="text-decoration:line-through"> {{ $todo->taskName }} </td>
                                            @else
                                                <td> {{ $todo->taskName }} </td>
                                            @endif
                                            <td> {{ $todo->taskDescription }} </td>
                                            <td class="td-actions text-right">
                                                <div class="form-check">
                                                    <input onclick="document.getElementById('form-complete-{{ $todo->id }}').submit()" type="checkbox" class="form-check-input">
                                                    @if($todo->taskStatus)
                                                        <label class="form-check-label" for="">Completed</label>
                                                    @else
                                                        <label class="form-check-label" for="">Pending</label>
                                                    @endif
                                                    <form class=".d-none" action="{{ route('todo.complete', $todo->id) }}" method="post" id="form-complete-{{ $todo->id }}">
                                                        @csrf
                                                        @method('put')
                                                    </form>
                                                </div>
                                                <div class="ripple-container"></div>
                                                <form action=" {{ route('todos.destroy', $todo->id) }} " method="post">
                                                    @csrf 
                                                    @method('delete')
                                                    <a href="{{ route('todos.edit',$todo->id) }}" rel="tooltip" class="btn btn-info btn-link btn-sm">
                                                        <i class="material-icons">edit</i>
                                                        <div class="ripple-container"></div>
                                                    </a>
                                                    <button type="button" class="btn btn-danger btn-link btn-sm" onclick="confirm('Are you sure want to delete?') ? this.parentElement.submit(): ''">
                                                        <i class="material-icons">close</i>
                                                        <div class="ripple-container"></div>
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>
                                        @empty
                                            <p>No task found!!!</p>
                                        @endforelse
                                    </tbody>
                                </table>
                                {{ $todos->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <form action=" {{ route('todos.store') }} " method="post" class="form-horizontal" autocomplete="off">
                    @csrf
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Add New Task</h4>
                        <p class="lead">add new task with description</p>
                    </div>
                    <div class="card-body">
                        <x-alert type="success" :message="session('todo-status')"/>
                        <div class="row">
                            <label for="" class="col-sm-2 col-form-label"> {{ __('Task Name') }} </label>
                            <div class="col-sm-7">
                                <div class="form-group {{ $errors->has('taskname') ? 'has-danger': '' }}">
                                <input type="text" name="taskname" class="form-control {{ $errors->has('taskname') ? 'is-invalid': ''}}" placeholder=" {{ __('Enter task Name/title') }}" value="{{ old('taskname') }}" required aria-required="true" id="input-taskname" >
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
                                <textarea name="taskdescription" id="taskdescription-input" cols="30" rows="10" placeholder=" {{ __('Enter task description') }}" class="form-control {{ $errors->has('taskdescription') ? 'is-invalid' : '' }}" required aria-required="true">{{ old('taskdescription') }}</textarea>
                                @if ($errors->has('taskdescription'))
                                    <span class="error text-danger" id="taskdescription-error">
                                        {{ $errors->first('taskdescription') }}
                                    </span>
                                @endif
                                </div>
                            </div>    
                        </div>
                        <div class="card-footer ml-auto mr-auto">
                            <button class="btn btn-primary" type="submit"> {{ __('Save') }} </button>
                        </div>
                    </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
