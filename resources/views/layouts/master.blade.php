<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>FIC - @yield('title')</title>

        <!-- Scripts -->
        @vite('resources/js/home.js')

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script>
            function changeLanguage(val) {
                $.ajax({
                    type: 'GET',
                    url: '/change-language/' + val
                }).done(function (response) {
                    window.location.href = window.location.pathname;
                }).fail(function (err) {
                    console.error('Error:', err);
                });
            }
        </script>

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
