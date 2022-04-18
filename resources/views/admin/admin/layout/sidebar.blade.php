   <div class="wrapper">
    <!-- Sidebar  -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <h3> -- </h3>
        </div>

        <ul class="list-unstyled components">
            <li>
                <a href="{{route('admin.dashboard')}}"><i class="fas fa-tachometer-alt"></i> control panal </a>
            </li>
            <li>
                <a href="#user" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fas fa-users"></i> users</a>
                <ul class="collapse list-unstyled" id="user">
                    <li>
                        <a href="{{route('admin.users')}}"><i class="far fa-plus-square"></i> add user </a>
                    </li>
                    <li>
                        <a href="{{route('admin.users')}}"><i class="fas fa-globe"></i>view all users </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#product" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fas fa-shopping-bag"></i>  products </a>
                <ul class="collapse list-unstyled" id="product">
                    <li>
                        <a href="{{route('admin.products')}}"><i class="fa fa-shop"></i>  view all products </a>
                    </li>
                    <li>
                        <a href="{{route('add-product')}}"><i class="fas fa-edit"></i>  add product </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#category" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fas fa-shopping-basket"></i>  categories </a>
                <ul class="collapse list-unstyled" id="category">
                    <li>
                        <a href="{{route('admin.categories')}}"><i class="fa fa-eye"></i>  view all categories </a>
                    </li>
                    <li>
                        <a href="{{route('add-category')}}"><i class="fas fa-edit"></i>  add product </a>
                    </li>
                </ul>
            </li>


            <li>
                <a href="#brands" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fas fa-tags"></i>  Brands </a>
                <ul class="collapse list-unstyled" id="brands">
                    <li>
                        <a href="{{route('admin.brands')}}"><i class="fa fa-eye"></i>  view all brands </a>
                    </li>
                    <li>
                        <a href="{{route('add-brand')}}"><i class="fas fa-edit"></i>  add brand </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#order" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-truck-loading"></i>  Orders </a>
                <ul class="collapse list-unstyled" id="order">
                    <li>
                        <a href="{{route('admin.orders')}}"><i class="fa fa-eye"></i>  view all Orders </a>
                    </li>

                </ul>
            </li>

            <li>
                <a href="#shipping_methods" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-truck-arrow-right"></i>  shipping methods </a>
                <ul class="collapse list-unstyled" id="shipping_methods">
                    <li>
                        <a href="{{route('admin.shipping-methods')}}"><i class="fa fa-eye"></i>  shipping methods </a>
                    </li>
                    <li>
                        <a href="{{route('add-category')}}"><i class="fas fa-edit"></i>  add Order </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#sliders" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-sliders"></i>   sliders </a>
                <ul class="collapse list-unstyled" id="sliders">
                    <li>
                        <a href="{{route('admin.sliders')}}"><i class="fa fa-eye"></i> view sliders</a>
                    </li>
                    <li>
                        <a href="{{route('add-slider')}}"><i class="fas fa-edit"></i>  add slider </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#settings" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fas fa-wrench"></i> Settings </a>
                <ul class="collapse list-unstyled" id="settings">
                    <li>
                        <a href=""><i class="fas fa-globe"></i> SEO </a>
                    </li>
                    <li>
                        <a href=""><i class="fas fa-sitrox"></i> site control </a>
                    </li>
                    <li>
                    </li>
                </ul>
            </li>

        </ul>
    </nav>

    <!-- Page Content  -->
    <div id="content">

        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="{{url('/')}}" target="_blank"> view web site <i class="fas fa-globe"></i> </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " aria-current="page" href="{{ route('admin.logout') }}">


                                <i class="fas fa-sign-out-alt"></i> </a>
                        </li>



                    </ul>
                </div>
                <img class="pro-img" src="{{ asset('images/profile.png') }}" alt="">
            </div>
        </nav>
