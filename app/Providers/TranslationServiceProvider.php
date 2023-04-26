<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Cache;

class TranslationServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    protected $langPath;
    protected $cName;
    protected $cachelangkey = 'CACHE_LANG_DEFAULT';


    public function __construct()
    {
        $locale = isset($_COOKIE[$this->cachelangkey]) ? $_COOKIE[$this->cachelangkey] : App::getLocale();//dd('locale: '.$locale);
        $this->langPath = resource_path("lang/" . ($locale == 'en' ? 'es' : $locale) . ".json");
        $this->cName = 'translations_json';
    }

    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        $locale = isset($_COOKIE[$this->cachelangkey]) ? $_COOKIE[$this->cachelangkey] :null;
        
        if ($locale && $locale != 'en' && $locale != 'es') {
            $this->langPath = resource_path("lang/" . $locale . ".json");
        }
        $string = file_get_contents($this->langPath);
        $json_tmp = json_decode($string, true);
        
    }
}
