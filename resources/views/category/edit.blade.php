@extends('layouts.app', ['activePage' => 'category', 'titlePage' => __('Edit Category')])

@section('content')
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-12 m-auto">
                <div class="card">
                    <div class="card-header card-header-success">
                        <h4 class="card-title">Edit Product Category</h4>
                        <p class="card-category">product category edit form</p>
                    </div>
                    <div class="card-body">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('category.index') }}">Add Category</a></li>
                            <li class="breadcrumb-item active">{{ $category->categoryName }}</li>
                        </ol>
                        @if(session('status'))
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="alert alert-success">
                                    <button type="button" class="close" data-dismiss='alert' aria-label="close">
                                        <i class="material-icons">close</i>
                                    </button>
                                    <span>{{ session('status') }}</span>
                                </div>
                            </div>
                        </div>
                        @endif
                        <form action=" {{ route('category.update', ['category' => $category->id]) }} " method="post" autocomplete="off" autofocus>
                            @csrf
                            @method('put')
                            <div class="row">
                                <label for="" class="col-sm-2 col-form-label"> {{ __("Category Name") }} </label>
                            </div>
                            <div class="col-sm-7">
                                <div class="form-group {{ $errors->has('categoryname') ? 'has-danger': ''}} ">
                                    <input type="text" name="categoryname" id="input-categoryname" class="form-control {{ $errors->has('categoryname') ? 'is-invalid': ''}}" placeholder=" {{ __('Add New Category') }} " required aria-required="true" value=" {{ old('categoryname', $category->categoryName ?? null) }} ">
                                    @if($errors->has('categoryname'))
                                    <span id="category-name" class="error text-danger" for='input-categoryname'>
                                        {{ $errors->first('categoryname') }}
                                    </span>
                                    @endif
                                </div>
                            </div>
                            <div class="row">
                                <label class="col-sm-12 col-form-label">{{ __("Category Description") }} </label>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group {{ $errors->has('categorydescription') ? 'has-danger': ''}} ">
                                    <textarea name="categorydescription" id="" cols="30" rows="10" class="form-control {{ $errors->has('categorydescription') ? 'is-invalid' : '' }} " placeholder=" {{ __('Enter Category Description') }} " required=true aria-required="true"> {{ old('categorydescription',$category->categoryDescription ?? null) }} </textarea>
                                    @if($errors->has('categorydescription'))
                                    <span id="category-name" class="error text-danger" for='input-categorydescription'>
                                        {{ $errors->first('categorydescription') }}
                                    </span>
                                    @endif
                                </div>
                            </div>
                            <div class="card-footer">
                                <button class="btn btn-success" type="submit"> {{ __('Update') }} </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection