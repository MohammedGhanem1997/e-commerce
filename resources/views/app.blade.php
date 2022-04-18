<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'ghanem') }}</title>



    <!-- Styles -->
    <link href="{{ asset('css/all.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/skin.css') }}" rel="stylesheet">
    <link href="{{ asset('css/main.css') }}" rel="stylesheet">
    <link href="{{ asset('css/plugins/owl-carousel/owl.carousel.css') }}" rel="stylesheet">
    <link href="{{ asset('css/plugins/magnific-popup/magnific-popup.css') }}" rel="stylesheet">
    <link href="{{ asset('css/plugins/jquery.countdown.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>

<main id="app">
    @include('layouts.nav')
{{--    @include('layouts.categories')--}}
    @include('layouts.modal')


{{--            <div class="col-xs-4 col-sm-3 col-lg-2">--}}
{{--                @yield('left-column')--}}
{{--            </div>--}}

                @include('layouts.error')
    <div class="container">
                @yield('content')
                </div>


    <footer class="footer"  >
        <p class="text-center"> copy right by ghanem</p>
    </footer>
</main>

<!-- Scripts -->
<script src="{{ asset('js/app.js') }}"></script>
{{--<script src="{{asset('js/my_script.js')}}"></script>--}}
@include('layouts.footer')
</body>
</html>