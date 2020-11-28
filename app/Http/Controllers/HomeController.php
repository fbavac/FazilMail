<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
         // $this->Auth->loginRedirect = array('controller'=>'your controller','action'=>'Your action')
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // return view('home');
        if(auth()->user()->role == "Admin"){
           
            return redirect('admin/details');

        }
       
        return view('/');
    
    }


}
