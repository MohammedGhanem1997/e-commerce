<header class="header header-10 header-intro-clearance">
    <div class="header-top">
        <div class="container">
            <div class="header-left">
                <a href="tel:#"><i class="fa fa-phone"></i> Call: +0123 456 789</a>
            </div><!-- End .header-left -->

            <div class="header-right">

                <ul class="top-menu">
                    <li>
                        <a href="#">Links</a>
                        <ul>
                            <li>
                               <i class="fa fa-map-location"></i>
                                cairo
                            </li>
                            <li>

                            </li>
                            <li class="login">
                                @guest()

                                <a href="{{url('login')}}" >Sign in / Sign up</a>
                                @else
                                    <a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" data-toggle="modal">logout</a>

                                @endguest
                            </li>
                        </ul>
                    </li>
                </ul><!-- End .top-menu -->
            </div><!-- End .header-right -->
        </div><!-- End .container -->
    </div><!-- End .header-top -->

    <div class="header-middle">
        <div class="container">
            <div class="header-left">
                <button class="mobile-menu-toggler">
                    <span class="sr-only">Toggle mobile menu</span>
                    <i class="fa fa-list"></i>

                </button>

                <a href="/" class="logo">
                    <img src="" alt=" Logo" width="105" height="25">
                </a>
            </div><!-- End .header-left -->

            <div class="header-center">
                <nav-search></nav-search>

              <!-- End .header-search -->
            </div>

            <div class="header-right">
                <div class="header-dropdown-link">


                        <nav-cart></nav-cart>



                </div>
            </div><!-- End .header-right -->
        </div><!-- End .container -->
    </div><!-- End .header-middle -->

    <div class="sticky-wrapper" style=""><div class="header-bottom sticky-header">
            <div class="container">
                <div class="header-left">
                    <div class="dropdown category-dropdown is-on" data-visible="true">
                        <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static" title="Browse Categories">
                            Browse Categories <i class=" iocn-nav fa-solid fa-bars"></i>
                        </a>

                        <div class="dropdown-menu">
                            <nav class="side-nav">
                                <ul class="menu-vertical sf-arrows sf-js-enabled" style="touch-action: pan-y;">

                                    @foreach( \App\Catalog::where('parent_id',null)->get() as $parent_catalog )


                                    <li class="megamenu-container">
                                        <a class="sf-with-ul" href="{{ asset('shop/category/'.$parent_catalog->id) }}">{{$parent_catalog->name}} <i class="float-right fa fa-arrow-right"></i></a>

                                        <div class="megamenu" style="display: none;">
                                            <div class="menu-col">
                                                <div class="row">
                                                    @foreach( \App\Catalog::where('parent_id',$parent_catalog->id)->get() as $catalog )
                                                    <div class="col-md-4">
                                                        <div class="menu-title">{{$catalog->name}}</div><!-- End .menu-title -->
                                                        <ul>
                                                            @if( \App\Catalog::where('parent_id',$catalog->id)->first() ==null)
                                                                <li><a href="{{ asset('shop/category/'.$catalog->id) }}">{{$catalog->name}}</a></li>

                                                            @else

                                                            @foreach( \App\Catalog::where('parent_id',$catalog->id)->get() as $subcatalog )


                                                            <li><a href="{{ asset('shop/category/'.$subcatalog->id) }}">{{$subcatalog->name}}</a></li>


                                                                @endforeach
                                                            @endif
                                                        </ul>
                                                    </div><!-- End .col-md-4 -->
                                                    @endforeach

                                                </div><!-- End .row -->

                                                <div class="row menu-banners">



                                                </div><!-- End .row -->
                                            </div><!-- End .menu-col -->
                                        </div><!-- End .megamenu -->
                                    </li>


                                    @endforeach


{{--                                @foreach( \App\Catalog::where('parent_id','<>',null)->get() as $catalog )                                    <li><a href="#">Home Appliances</a></li>--}}
{{--                                    <li><a href="#">Healthy &amp; {{$catalog->nam}}</a></li>--}}
{{--                                        @endforeach--}}
                                </ul><!-- End .menu-vertical -->
                            </nav><!-- End .side-nav -->
                        </div><!-- End .dropdown-menu -->
                    </div><!-- End .category-dropdown -->
                </div><!-- End .col-lg-3 -->
                <div class="header-center">
                    <nav class="main-nav">
                        <ul class="menu sf-arrows sf-js-enabled" style="touch-action: pan-y;">
                            <li class="megamenu-container active">
                                <a href="/" class="sf-with-ul">Home</a>

                            </li>
                            <li>
                                <a href="{{route('orders')}}" class="sf-with-ul">order</a>

                            </li>
                            <li>
                                <a href="#" class="sf-with-ul">brands</a>

                                <div class="megamenu megamenu-sm" style="display: none;">
                                    <div class="row no-gutters">
                                        <div class="col-md-6">
                                            <div class="menu-col">

                                                <ul>
                                                    @foreach(\App\Brand::all() as $brand)
                                                    <li><a href="{{route('brand.show', $brand->name)}}">{{$brand->name}}</a></li>
                                                    @endforeach
                                                </ul>
                                            </div><!-- End .menu-col -->
                                        </div><!-- End .col-md-6 -->


                                    </div><!-- End .row -->
                                </div><!-- End .megamenu megamenu-sm -->
                            </li>

                        </ul><!-- End .menu -->
                    </nav><!-- End .main-nav -->
                </div><!-- End .col-lg-9 -->
                <div class="header-right">
                    <i class="la la-lightbulb-o"></i><p>Clearance Up to 30% Off</p>
                </div>
            </div><!-- End .container -->
        </div></div><!-- End .header-bottom -->
</header>



{{--<modal-wrapper></modal-wrapper>--}}
<script>
    import NavSearch from "../../assets/js/components/NavSearch";
    export default {
        components: {NavSearch}
    }
</script>