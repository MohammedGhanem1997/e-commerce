@extends('admin.admin.layout.main')


@section('content')

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h3 class="display-3">
                @if ($brand) Edit Brand
                @else Add New Brand
                @endif
            </h3>
        </div>
    </div>


            <form method="POST" action="{{ url('/admin/brands/') }}" enctype="multipart/form-data" class="form-horizontal">
                {{ csrf_field() }}
                @if ($brand)
                    <input type="hidden" name="id" value="{{$brand->id}}">
                @endif
                <div class="row">
                <div class="form-group  col-md-6 required">
                    <label for="inputName" class="col-sm-2 control-label">Name</label>
                    <div class="">
                        <input type="text" name="name" class="form-control" id="inputName" placeholder="Name"
                               @if ($brand) value="{{$brand->name}}" @endif
                               required minlength="3" maxlength="30">
                    </div>
                </div>


                <div class="form-group  col-md-12 ">
                    <img id="blah" src="@if ($brand) {{ url($brand->image) }} @else # @endif" alt="image" class="img-thumbnail" alt="Category image" width="200">

                    <div>
                        <div class="input-group">
                            <label class="input-group-btn">
                                <span class="btn btn-primary">
                                    Browse&hellip; <input type="file" accept="image/*" data-preview="#preview" name="image" id="inputFile" style="display: none;">
                                </span>
                            </label>
                            <input type="text" class="form-control" readonly>
                        </div>
                        <span class="help-block">
                            The image must be jpeg/jpg/gif/png/svg less than 2Mb
                        </span>
                    </div>
                </div>

        </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10 text-center">
                        <button class="btn btn-info" type="submit">
                            @if ($brand) save
                            @else add Brand
                            @endif
                        </button>
                    </div>
                </div>
            </form>

    {{--This Divs For extend from admin-sid dont remove it--}}
@endsection
