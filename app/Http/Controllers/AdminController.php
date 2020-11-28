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
      
        
        return redirect('admin/details');
    
    }

    public function logout(){
    // session()->flush();
    Auth::logout();
    return redirect('/');
   }
}
