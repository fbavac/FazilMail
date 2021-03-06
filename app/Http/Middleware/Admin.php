<?php

namespace App\Http\Middleware;

use Closure;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
         if(auth()->check() && auth()->user()->role == "Admin"){ //fbc
     return $next($request);
    }
    return redirect('home')->with('error','You dont have admin access');
    }
}
