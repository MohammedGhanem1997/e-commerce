@extends('admin.admin.layout.main')
{{--@include('admin.layout.sidebar')--}}


@section('content')
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h3 class="display-3">Brands</h3>
            <a class="btn bg-primary" href="{{route('add-product')}}">Add New Product</a>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col"> name </th>


                    <th scope="col">{{__('image')}}</th>
                    <th scope="col">{{__('created at')}}</th>
                    <th scope="col">{{__('transaction')}} </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    @foreach ($brands as $brand)

                        <th scope="row">{{$loop->index}}</th>
                        <td>{{ $brand->name }}</td>
                        <td>{{ $brand->priority }}</td>
                        <td>{{ $brand->parent_name }}</td>
                        <td>   <img src="{{ url($brand->image) }}" class="img-thumbnail" alt="image" width="152" height="118">   </td>
                        <td>{{ $brand->created_at }}</td>
                        <td class="text-center">

                            <a class="btn btn-success" href="{{ url('/admin/edit-brand/'.$brand->id) }}"> {{__('edit')}} </a>
                            <form method="POST" action="{{ url('/admin/brands/'.$brand->id) }}">
                                <input type="hidden" name="id" value="{{ $brand->id }}">
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
