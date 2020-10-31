<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{
    //
    
     public function index()
    {
        return Product::all();
    }
 
    public function show($id)
    {
        return Product::find($id);
    }

    public function store(Request $request)
    {
        return Product::create($request->all());
    }

    public function update(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $product->update($request->all());

        return $product;
    }

    public function delete(Request $request, $id)
    {
        // $product = Product::findOrFail($id);
    	// $product->delete();
        $records=Product::Where('id', $id)->delete();
       // return response()->json(null, 204);
        return 204;
    //     if($records){
    //     	return $records;
    //     }
    //     else{
    //     	return "No Data";
    //    // return response()->json(null, 204);
    // }
    }


}




    // public function index()
    // {
    //     return Product::all();
    // }

    // public function show(Product $product)
    // {
    //     return $product;
    // }

    // public function store(Request $request)
    // {
    //     $product = Product::create($request->all());

    //     return response()->json($product, 201);
    // }

    // public function update(Request $request, Product $product)
    // {
    //     $product->update($request->all());

    //     return response()->json($product, 200);
    // }

    // public function delete(Product $product)
    // {
    //     $product->delete();

    //     return response()->json(null, 204);
    // }