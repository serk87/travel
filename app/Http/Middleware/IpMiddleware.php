<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class IpMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if ($request->ip() != "192.168.0.155" || in_array('root', Auth::user()->getRoleNames()->toArray())) {
            // here instead of checking a single ip address we can do collection of ips
            //address in constant file and check with in_array function
            return $next($request);

            }
            return redirect('home');
    
    }
}
