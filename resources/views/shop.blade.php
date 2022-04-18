@extends('app')
@section('content')
    @include('layouts.slider')

<div class="row">
    <div class="col-md-4">
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
{{--<script>--}}
{{--    import ProductFilters from "../assets/js/components/ProductFilters";--}}
{{--    export default {--}}
{{--        components: {ProductFilters}--}}
{{--    }--}}
{{--</script>--}}
<script>
    import Product from "../assets/js/components/Product";
    export default {
        components: {Product}
    }
</script>