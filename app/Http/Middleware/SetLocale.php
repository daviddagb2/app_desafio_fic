<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App;

class SetLocale
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(Auth()->user() != null) {
            if ($request->user() && in_array($request->user()->language, ['es','en','fr','de','it','pt','ja','ko','zh','sv','nh','my']))
                App::setLocale($request->user()->language);
        } else{
            $cachelangkey = "CACHE_LANG_DEFAULT";
            if (auth()->user() == null) {
                $cacheLang = isset($_COOKIE[$cachelangkey]) ? $_COOKIE[$cachelangkey] : "";
                if($cacheLang == "") {
                    $cacheLang = "es";
                }
                App::setLocale($cacheLang);
            }
        }

        return $next($request);
    }
}
