<div class="container">
    <div class="row">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col"> UID </th>
                <th scope="col">{{__('name')}} </th>
                <th scope="col">{{__('email')}}</th>
                <th scope="col">{{__('created at')}}</th>
                <th scope="col">{{__('total')}}</th>
                <th scope="col">{{__('status')}}</th>

                <th scope="col">{{__('transaction')}} </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                @foreach ($orders as $order)

                    <th scope="row">{{$loop->index}}</th>
                    <td>{{$order->order_label}}</td>
                    <td>{{$order->user->name}}</td>
                    <td>{{ $order->user->email }}</td>
                    <td>{{$order->created_at->format('Y-M-d h:i')}}</td>
                    <td>{{$order->total}}</td>
                    <td>{{$order->status}}</td>
                    <td class="text-center">

                        <a class="btn btn-success" href="#"> {{__('edit')}} </a>
                        <a class="btn btn-success" href="#"> {{__('show')}} </a>

                    <td>


                    <td>


                    </td>
            </tr>



            @endforeach

            </tbody>
        </table>
    </div>

</div>


