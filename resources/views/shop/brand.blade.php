@extends('app')
@section('content')
    <div class="jumbotron jumbotron-fluid" style="background-image: url('{{asset($brand[0]->image)}}')  ; background-position: center;
            background-repeat: no-repeat;
            background-size: contain;">
        <div class="container">
            <h3 class="display-3">{{$brand[0]->name}}</h3>
        </div>
    </div>
    <div class="row">

        <hr>
        <div class="col-md-1">
            @yield('left-column')
        </div>

        <div class="col-md-10">

            <div class="row product-list">
                <div class="row">
                @foreach($brand[0]->products as $product)


                        <div class="col-md-4">
                            <product :product="{{$product}}"></product>

                        </div>


@endforeach
            </div>



            </div>
        </div>


    </div>

    </div>

@stop
<script>
    import Product from "../../assets/js/components/Product";
    export default {
        components: {Product}
    }
</script>