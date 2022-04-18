@extends('admin.admin.layout.main')
{{--@include('admin.layout.sidebar')--}}


@section('content')
    <div class="search">
{{--        <form action="{{route('admin.search-user')}}" method="get">--}}
{{--            @csrf--}}
{{--            <input name="search" type="text" class="input" placeholder="Search....">--}}
{{--            <button type="submit" class="btn">--}}
{{--                <i class="fas fa-search"></i>--}}
{{--            </button></form>--}}
    </div>
    <div class="container">
        <div class="row">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col"> title </th>
                    <th scope="col">{{__('description')}} </th>
                    <th scope="col">{{__('link')}} </th>
                    <th scope="col">{{__('image')}}</th>
                    <th scope="col">{{__('created at')}}</th>
                    <th scope="col">{{__('transaction')}} </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    @foreach ($sliders as $slider)

                        <th scope="row">{{$loop->index}}</th>
                        <td>{{ $slider->title }}</td>
                        <td> <a href="{{ $slider->link}}">{{ $slider->link}}</a> </td>

                        <td>{{ $slider->description }}</td>
                        <td>   <img src="{{ url($slider->image) }}" class="img-thumbnail" alt="image" width="152" height="118">   </td>
                        <td>{{ $slider->created_at }}</td>
                        <td class="text-center">

                            <a class="btn btn-success" href="{{ url('/admin/edit-slider/'.$slider->id) }}"> {{__('edit')}} </a>
                            <form method="POST" action="{{ url('/admin/sliders/'.$slider->id) }}">
                                <input type="hidden" name="id" value="{{ $slider->id }}">
                                {{ method_field('DELETE') }}
                                {{ csrf_field() }}
                                <button class="btn btn-xs btn-default"  type="submit" data-toggle="confirmation-singleton">
                                    remove
                                </button>
                            </form>
                        <td>


                        <td>


                        </td>
                </tr>



                @endforeach

                </tbody>
            </table>
        </div>

    </div>



@endsection
