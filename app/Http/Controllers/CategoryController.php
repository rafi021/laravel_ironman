<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Requests\CategoryForm;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('category.index', [
            'categorys' => Category::latest()->paginate(5),
            'time' => now(),
            'count' => Category::count(),
            'deleted_categorys' => Category::onlyTrashed()->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CategoryForm $request)
    {
        //dd($request->all());
        Category::insert([
            'categoryName' => $request->categoryname,
            'categoryDescription' => $request->categorydescription,
            'user_id' => Auth::id(),
            'created_at' => Carbon::now(),
        ]);

        return back()->with('success_status', $request->categoryname . ' category added successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('category.edit', [
            'category' => Category::findOrFail($id),
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(CategoryForm $request, $id)
    {
        $category = Category::findOrFail($id);
        $validatedData = $request->validated();
        $category->update($validatedData);
        $category->save();
        //dd($validatedData, $category);
        return redirect()->route('category.index')->with('status', $category->categoryName . ' Category updated successfully!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        return redirect()->route('category.index')->with('status', $category->categoryName . ' Category deleted successfully!!');
    }

    public function restore($id)
    {
        Category::onlyTrashed()->where('id', $id)->restore();
        $category = Category::findOrFail($id);
        return redirect()->route('category.index')->with('status', $category->categoryName . ' Category restored successfully!!');
    }

    public function force_delete($id)
    {
        //$category = Category::findOrFail($id);
        Category::onlyTrashed()->where('id', $id)->forceDelete();
        //$category->forceDelete();
        return redirect()->route('category.index')->with('status', ' Category deleted permanently!!');
    }
}
