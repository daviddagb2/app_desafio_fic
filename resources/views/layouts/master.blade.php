<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>FIC - @yield('title')</title>

        @include('home.favicon')

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
    <body>


    <!-- Main wrapper -->
    <div class="main-wrapper">
       
        <div class="d-flex flex-row vh-100">
       
            <div class="vh-100">
                @include('home.sidebar')
            </div>

            <div class="flex-fill vh-100">
            
            
                <div class="spacertop"></div>
                
                <main class="contentmain">
                    @include('home.header')
                    <div class="pb-5 ps-5 pe-5">
                        @include('components.gs-flash-message')
                        <br/>
                        @yield('content')
                    </div>
                </main>
            </div>
        </div>
      
    </div>
    <!-- End Main wrapper -->     

    </body>
</html>
