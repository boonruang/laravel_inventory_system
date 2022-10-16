<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Supplier;
use App\Models\Category;
use App\Models\Unit;
use Auth;
use Illuminate\Support\Carbon;

class ProductController extends Controller
{
    public function ProductAll(){
        $products = Product::latest()->get();
        return view('backend.product.product_all',compact('products'));
    } // End Method

    public function ProductAdd(){
        $suppliers = Supplier::all();
        $units = Unit::all();
        $categories = Category::latest()->get();
        return view('backend.product.product_add',compact('suppliers','units','categories'));
    } // End Method
}
