
@include('admin.admin.layout.header')


@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>


@endif
@if(session()->has('message'))
    <div class="alert alert-success">
        {{ session()->get('message') }}
    </div>
@endif
@include('admin.admin.layout.sidebar')

@yield('content')

@include('admin.admin.layout.footer')
