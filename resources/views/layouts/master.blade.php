<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>FIC - @yield('title')</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/dashboard.css', 'resources/js/home.js'])
        @vite(['resources/sass/home.scss'])
    </head>
    <body class="font-sans antialiased">

        @include('home.header')

        <div class="container-fluid">
            <div class="row">
                
                @include('home.sidebar')

                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

                    @include('components.gs-flash-message')

                    <br/>

                    @yield('content')
                </main>


            </div>
        </div>

    </body>
</html>
