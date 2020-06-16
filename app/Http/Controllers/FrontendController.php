<?php

namespace App\Http\Controllers;

use App\BlogPost;
use App\Category;
use App\ClientMessage;
use App\Product;
use App\ProductImage;
use App\Testimonial;
use Carbon\Carbon;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
    {

        return view('frontend.pages.index', [
            'categories' => Category::all(),
            'products' => Product::latest()->take(8)->get(),
            'testimonials' => Testimonial::latest()->take(4)->get(),
        ]);
    }

    public function singleproduct($slug)
    {
        $product_info = Product::where('slug', $slug)->get()->first();
        $product_images = ProductImage::where('product_id', $product_info->id)->get();
        $related_products = Product::where('category_id', $product_info->category_id)->where('slug', '!=', $slug)->get();
        // dd($product_info, $related_product);
        return view('frontend.pages.single_product', [
            'product_info' => $product_info,
            'related_products' => $related_products,
            'product_images' => $product_images,
        ]);
    }

    public function contactus()
    {
        return view('frontend.pages.contact');
    }

    public function about()
    {
        return view('frontend.pages.about');
    }

    public function blog()
    {
        return view('frontend.pages.blog', [
            'posts' => BlogPost::latest()->with('user')->paginate(6),
        ]);
    }

    public function blogDetails($id)
    {
        $post_info = BlogPost::withCount('comments')->findOrFail($id);
        $recent_posts = BlogPost::latest()->take(6)->get();
        //dd($id, $post_info);
        return view('frontend.pages.blog-details', [
            'post' => $post_info,
            'categorys' => Category::latest()->take(6)->get(),
            'recent_posts' => $recent_posts,
        ]);
    }

    public function shop()
    {
        return view('frontend.pages.shop', [
            'categorys' => Category::with('products')->get(),
            'products' => Product::all(),
        ]);
    }

    public function service()
    {
        return view('service');
    }

    public function clientMessage(Request $request)
    {
        //dd($request->all());
        $request->validate([
            'fname' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
        ]);

        $client_id = ClientMessage::insertGetId([
            'fname' => $request->input('fname'),
            'email' => $request->input('email'),
            'subject' => $request->input('subject'),
            'msg' => $request->input('msg'),
            'created_at' => Carbon::now(),
        ]);

        $client_file = ClientMessage::findOrFail($client_id);
        if ($request->hasFile('client_upload_file')) {
            $file = $request->file('client_upload_file');
            $file_name = $client_id . '.' . $file->guessExtension();
            $path = $file->storeAs('/client_uploads', $file_name);
            $client_file->update([
                'client_upload_file' => $path,
            ]);
            return back()->with([
                'success_status' => 'Thank you',
                'type' => 'info',
            ]);
        }

        return back()->with([
            'success_status' => 'Thanks for you Message, we will soon get back to you',
            'type' => 'success',
        ]);
    }
}
