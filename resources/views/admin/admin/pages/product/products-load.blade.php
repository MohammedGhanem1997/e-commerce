
<div class="container">
    <div class="row">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">{{__('name')}} </th>
                <th scope="col">{{__('description')}}</th>
                <th scope="col">{{__('image')}}</th>
                <th scope="col">{{__('price')}}</th>
                <th scope="col">{{__('catalogs name')}}</th>
                <th scope="col">{{__('created_at')}}</th>

                <th scope="col">{{__('transaction')}} </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                @foreach ($products as $product)

                    <th scope="row">{{$loop->index}}</th>
                    <td>{{$product->name}}</td>
                    <td>{{ $product->description }}</td>
                    <td>            <img src="{{ url('images/'.$product->image) }}" class="img-thumbnail" alt="image" width="152" height="118">
                    </td>
                    <td>{{ $product->price }}</td>
                    <td> @foreach( $product->catalogs as $catalog) - {{$catalog->name }}  @endforeach</td>
                    <td>{{$product->created_at->format('Y-M-d h:i')}}</td>

                    <td class="text-center">


                        <a class="btn btn-success" href="{{ url('/admin/edit-product/'.$product->id) }}"> {{__('edit')}} </a>
                        <form method="POST" action="{{ route('product.delete') }}">
                            <input type="hidden" name="id" value="{{ $product->id }}">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button class="btn btn-xs btn btn-danger"  type="submit" data-toggle="confirmation-singleton">
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