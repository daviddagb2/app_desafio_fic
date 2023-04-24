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

    public function __construct()
    {
        $this->langPath = resource_path("lang/" . (App::getLocale() == 'en' ? 'es' : App::getLocale()) . ".json");
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
        Cache::forget($this->cName);
        Cache::rememberForever($this->cName, function () {
            $string = file_get_contents($this->langPath);
            $json_tmp = json_decode($string, true);
            return json_encode($json_tmp);
        });
    }
}
