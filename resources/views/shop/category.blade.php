@extends('app')
@section('content')

<div class="row">
    @include('layouts.categories')
    <hr>
    <div class="col-md-2">
        @yield('left-column')
    </div>

    <div class="col-md-8">
        <div class="row product-list">



    <product-list :keyword="{{json_encode($keyword ?? '')}}"></product-list>






        </div>
    </div>


</div>

</div>

@stop
