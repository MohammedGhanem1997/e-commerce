@extends('admin.layout.main')
@include('admin.layout.sidebar')


@section('content')

    <div class="container">

        <form   method="POST" action="{{ route('admin.user.store') }}" >
            @csrf
            <div class="row">
                <div class="col-md-6 b-3">
                    <label for="exampleInputEmail1" class="form-label">name</label>
                    <input type="text" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="col-md-6 b-3">
                    <label for="exampleInputEmail1" class="form-label">email</label>
                    <input type="text" class="form-control"  name="email" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleInputPassword1" class="form-label"> password</label>
                    <input type="password" name ="password" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="exampleInputPassword1" class="form-label">repeat pasword </label>
                    <input type="password" name="passwordverification" class="form-control" id="exampleInputPassword1">
                </div>

                <button type="submit" class="btn btn-primary mt-2">save</button>
            </div>
        </form>

    </div>


    {{--This Divs For extend from admin-sid dont remove it--}}
@endsection
