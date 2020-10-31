<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
class AdminController extends Controller
{
    //

	

     public function adminLogin()
    {
        // return view('home');
        if (auth::guest()) {
          return view('admin.adminlogin');
    }
      
        // return view('admin.adminhome');
        return redirect('admin/home');
    
    }
}
