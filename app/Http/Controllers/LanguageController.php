<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\App;

class LanguageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request, $language)
    {
        if (!in_array($language, ['es','en'])) {
            return response()->json([
                "message" => __('Language unsupported')
            ]);
        }

        $cachelangkey = "CACHE_LANG_DEFAULT";
        setcookie($cachelangkey, $language, time() + 3600*24*30, '/');
        App::setLocale($language);

        if (auth()->user()) {
            auth()->user()->language = $language;
            auth()->user()->save();
        }

        return response()->json([
            "message" => __('Language successfully updated')
        ]);
    }

}
