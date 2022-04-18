@extends('admin.admin.layout.main')
{{--@include('admin.layout.sidebar')--}}


@section('content')
    <div class="search">

    </div>
    <div class="container">
        <div class="row">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col"> name </th>
                    <th scope="col">{{__('priority')}} </th>
                    <th scope="col">{{__('parent_name')}}</th>
                    <th scope="col">{{__('image')}}</th>
                    <th scope="col">{{__('created at')}}</th>
                    <th scope="col">{{__('transaction')}} </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    @foreach ($categories as $category)

                        <th scope="row">{{$loop->index}}</th>
                        <td>{{ $category->name }}</td>
                        <td>{{ $category->priority }}</td>
                        <td>{{ $category->parent_name }}</td>
                        <td>   <img src="{{ url($category->image) }}" class="img-thumbnail" alt="image" width="152" height="118">   </td>
                        <td>{{ $category->created_at }}</td>
                        <td class="text-center">

                            <a class="btn btn-success" href="{{ url('/admin/edit-category/'.$category->id) }}"> {{__('edit')}} </a>
                            <form method="POST" action="{{ url('/admin/categories/'.$category->id) }}">
                                <input type="hidden" name="id" value="{{ $category->id }}">
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
