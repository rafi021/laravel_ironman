<?php

namespace App\Http\Controllers;

use App\Category;
use App\Http\Requests\ProductRequest;
use App\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Image;

class ProductController extends Controller
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
        return view('product.index', [
            'products' => Product::latest()->paginate(10),
            'time' => now(),
            'count' => Product::count(),
            'deleted_products' => Product::onlyTrashed()->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('product.create', [
            'categories' => Category::all(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        //dd($request->all());
        $product_id = Product::insertGetId([
            'category_id' => $request->input('category_id'),
            'product_name' => $request->input('product_name'),
            'product_breif_description' => $request->input('product_breif_description'),
            'product_long_description' => $request->input('product_long_description'),
            'product_code' => $request->input('product_code'),
            'product_price' => $request->input('product_price'),
            'product_stock' => $request->input('product_stock'),
            'additional_info' => $request->input('additional_info'),
            'created_at' => Carbon::now(),
        ]);
        $this->image_upload($request, $product_id);

        return back()->with('success_status', $request->product_name . 'added successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        return view('product.edit', [
            'categories' => Category::all(),
            'product' => $product,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, Product $product)
    {

        $product->update([
            'category_id' => $request->input('category_id'),
            'product_name' => $request->input('product_name'),
            'product_breif_description' => $request->input('product_breif_description'),
            'product_long_description' => $request->input('product_long_description'),
            'product_code' => $request->input('product_code'),
            'product_price' => $request->input('product_price'),
            'product_stock' => $request->input('product_stock'),
            'additional_info' => $request->input('additional_info'),
        ]);

        $this->image_upload($request, $product->id);

        return redirect()->route('product.index')->with([
            'success_status' => 'Product updated Successfully!!',
            'type' => 'success',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return redirect()->route('product.index')->with([
            'success_status' => 'Product delete Successfully!!',
            'type' => 'success',
        ]);
    }

    public function image_upload(ProductRequest $request, $product_id)
    {

        $product = Product::findorFail($product_id);
        //dd($request->all(), $category, $request->hasFile('categoryimage'));
        if ($request->hasFile('product_image')) {
            if ($product->product_image != 'default_product.jpg') {
                //delete old photo
                $photo_location = 'public/uploads/product_photos/';
                $old_photo_location = $photo_location . $product->product_image;
                unlink(base_path($old_photo_location));
            }
            $photo_location = 'public/uploads/product_photos/';
            $uploaded_photo = $request->file('product_image');
            $new_photo_name = $product->id . '.' . $uploaded_photo->getClientOriginalExtension();
            $new_photo_location = $photo_location . $new_photo_name;
            Image::make($uploaded_photo)->resize(200, 200)->save(base_path($new_photo_location), 40);
            //$user = User::find($category->id);
            $check = $product->update([
                'product_image' => $new_photo_name,
            ]);
            return redirect()->route('product.index')->with([
                'type' => 'success',
                'success_status' => 'Product Photo Upload Successfull!!!',
            ]);
        } else {
            return back()->with([
                'type' => 'danger',
                'success_status' => 'Please upload a valid image file',
            ]);
        }
    }
}
