@extends('admin.admin.layout.main')


@section('content')

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h3 class="display-3">
                @if ($slider) Edit Category
                @else Add New Category
                @endif
            </h3>
        </div>
    </div>


            <form method="POST" action="{{ url('/admin/sliders/') }}" enctype="multipart/form-data" class="form-horizontal">
                {{ csrf_field() }}
                @if ($slider)
                    <input type="hidden" name="id" value="{{$slider->id}}">
                @endif
                <div class="row">
                <div class="form-group  col-md-6 required">
                    <label for="inputName" class="col-sm-2 control-label">title</label>
                    <div class="">
                        <input type="text" name="title" class="form-control" id="inputName" placeholder="title"
                               @if ($slider) value="{{$slider->title}}" @endif
                               required minlength="3" maxlength="30">
                    </div>
                </div>

                    <div class="form-group  col-md-6 required">
                        <label for="inputName" class="col-sm-2 control-label">link</label>
                        <div class="">
                <input type="text" name="link" class="form-control" id="inputName" placeholder="link"                             @if ($slider) value="{{$slider->link}}" @endif
                @if ($slider) value="{{$slider->link}}" @endif               >
                        </div>
                    </div>

                <div class="form-group  col-md-12 ">
                    <img id="blah" src="@if ($slider) {{ url($slider->image) }} @else # @endif" alt="image" class="img-thumbnail" alt="Category image" width="200">

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
                    <div class="form-group   col-md-12 ">
                        <label for="inputDescription" class="col-sm-2 control-label">Description</label>

                            <textarea type="text" name="description" class="form-control" id="inputDescription" placeholder="Description">

                                   @if ($slider) {{$slider->description}} @endif
                            </textarea>

                    </div>
        </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10 text-center">
                        <button class="btn btn-info" type="submit">
                            @if ($slider) save
                            @else add category
                            @endif
                        </button>
                    </div>
                </div>
            </form>

    {{--This Divs For extend from admin-sid dont remove it--}}
@endsection
