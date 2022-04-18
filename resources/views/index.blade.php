@extends('app')
@section('content')
    @include('layouts.slider')


    <div class="mb-3"></div><!-- End .mb-3 -->

    <div class="owl-carousel owl-simple brands-carousel" data-toggle="owl"
         data-owl-options='{
                                "nav": false,
                                "dots": false,
                                "margin": 20,
                                "loop": false,
                                "responsive": {
                                    "0": {
                                        "items":2
                                    },
                                    "420": {
                                        "items":3
                                    },
                                    "600": {
                                        "items":4
                                    },
                                    "900": {
                                        "items":5
                                    },
                                    "1600": {
                                        "items":6,
                                        "nav": true
                                    }
                                }
                            }'>

        @foreach(\App\Brand::all() as $brand)
        <a  style="height: 100px; width: 200px !important;" href="{{route('brand.show', $brand->name)}}" class="brand">
            <img style="height: 100px; width: 200px !important;" src="{{$brand->image}}" alt="{{$brand->name}}">
        </a>
        @endforeach
    </div>
    <div class="mb-3"></div><!-- End .mb-3 -->


    <div class="container">
        <h2 class="title text-center mb-2">Explore Popular Categories</h2><!-- End .title -->

        <div class="cat-blocks-container">
            <div class="row">

                @foreach(\App\Catalog::orderBy('Priority','desc')->limit(6)->get() as $category)
                    <div class="col-6 col-sm-4 col-lg-2">
                        <a href="{{ asset('shop/category/'.$category['id']) }}" class="cat-block">
                            <figure>
                                    <span>
                                        <img src="{{asset($category->image)}}" alt="Category image">
                                    </span>
                            </figure>

                            <h3 class="cat-block-title">{{$category->name}}</h3><!-- End .cat-block-title -->
                        </a>
                    </div><!-- End .col-sm-4 col-lg-2 -->

                @endforeach


            </div><!-- End .row -->
        </div><!-- End .cat-blocks-container -->
    </div>



    <div class="bg-light pt-3 pb-5">
        <div class="container">
            <div class="heading heading-flex heading-border mb-3">
                <div class="heading-left">
                    <h2 class="title">Hot Deals Products</h2><!-- End .title -->
                </div><!-- End .heading-left -->


                <div class="heading-right">
                    <ul class="nav nav-pills nav-border-anim justify-content-center" role="tablist">

                        @foreach($categories as $category)
                            @if($loop->index== 2)
                                <li class="nav-item  ">
                                    <a class="nav-link active" id="{{$category->name}}-link" data-toggle="tab" href="#{{$category->name}}-tab" role="tab" aria-controls="{{$category->name}}-tab" aria-selected="true">{{$category->name}}</a>
                                </li>

                            @else
                                <li class="nav-item ">
                                    <a class="nav-link " id="{{$category->name}}" data-toggle="tab" href="#{{$category->name}}-tab" role="tab" aria-controls="{{$category->name}}-tab" aria-selected="false">{{$category->name}}</a>
                                </li>
                            @endif
                        @endforeach
                    </ul>
                </div><!-- End .heading-right -->
            </div><!-- End .heading -->

            <div class="tab-content tab-content-carousel">

                @foreach($categories as $category)
                    <div class="tab-pane p-0 fade   {{$loop->index==2?'active in show ':''}}   " id="{{$category->name}}-tab" role="tabpanel" aria-labelledby="{{$category->name}}-link">
                        <div class="owl-carousel owl-simple carousel-equal-height carousel-with-shadow owl-loaded owl-drag" data-toggle="owl" data-owl-options="{
                                    &quot;nav&quot;: false,
                                    &quot;dots&quot;: true,
                                    &quot;margin&quot;: 20,
                                    &quot;loop&quot;: false,
                                    &quot;responsive&quot;: {
                                        &quot;0&quot;: {
                                            &quot;items&quot;:2
                                        },
                                        &quot;480&quot;: {
                                            &quot;items&quot;:2
                                        },
                                        &quot;768&quot;: {
                                            &quot;items&quot;:3
                                        },
                                        &quot;992&quot;: {
                                            &quot;items&quot;:4
                                        },
                                        &quot;1280&quot;: {
                                            &quot;items&quot;:5,
                                            &quot;nav&quot;: true
                                        }
                                    }
                                }">
                            <!-- End .product -->

                            <!-- End .product -->

                            <!-- End .product -->

                            <!-- End .product -->

                            <!-- End .product -->

                            <!-- End .product -->

                            @foreach( \App\Product::where('catalog_id',$category->id)->orderBy('discount','DESC')->limit(10)->get() as  $product)


                                <product :product="{{ $product}}"></product>


                            @endforeach





                        </div><!-- End .owl-carousel -->
                    </div><!-- .End .tab-pane -->
            @endforeach

            <!-- End .container -->
            </div>

        </div>
    </div>













    <div class="row">


        <div class="col-md-12 p-8 m-8">



                <product-list :keyword="{{json_encode($keyword ?? '')}}"></product-list>

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