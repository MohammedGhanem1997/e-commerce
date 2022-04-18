<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\View\View;

class BrandController extends Controller
{
    public function show($name)
    {
        $brand=Brand::where('name',$name)->with('products')->get();
//        return $brand;
        return view('shop.brand',compact('brand'));
    }
}
