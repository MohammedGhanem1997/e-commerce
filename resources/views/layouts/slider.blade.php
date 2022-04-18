<div class="intro-slider-container">
    <div class="intro-slider owl-carousel owl-simple owl-nav-inside owl-loaded owl-drag" data-toggle="owl" data-owl-options="{
                        &quot;nav&quot;: false,
                        &quot;responsive&quot;: {
                            &quot;992&quot;: {
                                &quot;nav&quot;: true
                            }
                        }
                    }">
        <!-- End .intro-slide -->

        <!-- End .intro-slide -->

        <!-- End .intro-slide -->
        <div class="owl-stage-outer">
            <div class="owl-stage" style="transform: translate3d(-2698px, 0px, 0px); transition: all 0s ease 0s; width: 9443px;">







          @foreach(\App\Slider::all() as $slider)

                <div class="owl-item" style="width: 1349px;"><div class="intro-slide" style="background-image: url({{asset($slider->image)}});">
                        <div class="container intro-content">
                            <div class="row">
                                <div class="col-auto offset-lg-3 intro-col">
                                    <h3 class="intro-subtitle">{{$slider->title}}</h3><!-- End .h3 intro-subtitle -->
                                    <h1 class="intro-title">{{$slider->description}}
                                        <span>
                                            <sup class="font-weight-light line-through"></sup>
                                            <span class="text-primary"></span>
                                        </span>
                                    </h1><!-- End .intro-title -->

                                    <a href="{{$slider->link}}" class="btn btn-outline-primary-2">
                                        <span>Shop Now</span>
                                        <i class=" fa fa-arrow-right"></i>
                                    </a>
                                </div><!-- End .col-auto offset-lg-3 -->
                            </div><!-- End .row -->
                        </div><!-- End .container intro-content -->
                    </div></div>

                @endforeach


            </div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button></div><div class="owl-dots"><button role="button" class="owl-dot active"><span></span></button><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot"><span></span></button></div></div><!-- End .owl-carousel owl-simple -->

    <span class="slider-loader"></span><!-- End .slider-loader -->



</div>


