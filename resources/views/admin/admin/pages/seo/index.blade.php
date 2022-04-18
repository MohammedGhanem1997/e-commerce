@extends('admin.layout.main')
@include('admin.layout.sidebar')


@section('content')

    <div class="Container add-blog">

        <form method="post" action="{{ route('admin.setting.seo.post') }}" enctype="multipart/form-data">
            @csrf
            <h3>SEO HOME </h3>
            <div class="row">
                @foreach( \App\Models\SEO::where('table','Home')->get() as $seo )
                    <input type="hidden" name="meta[]" value="{{$seo->meta}}">



                    <div class="col-md-6">
                        <div class="col-md-3">
                            <label class="form-label mt-2">{{$seo->meta}} </label>
                        </div>
                        <div class="col-md-12">
                            <div class="d-flex">
                                <a href="#"><i class="icon icon-question ml-4 mt-3 d-block"></i></a>
                                <input type="text"  name="description[]" multiple class="form-control" value="{{$seo->description}}">

                            </div>
                        </div>
                    </div>

                @endforeach


                <button class="btn btn-success mt-4  ">save</button>
            </div>
        </form>

    </div>
    <hr>










{{--    <div class="modal fade" id="confirm" tabindex="-2" aria-labelledby="exampleModalLabel2" aria-hidden="true">--}}
{{--        <div class="modal-dialog">--}}
{{--            <div class="modal-content">--}}
{{--                <div class="modal-header">--}}
{{--                    <p>تأكيد الحذف</p>--}}
{{--                </div>--}}
{{--                <div class="modal-body">--}}
{{--                    <h3>هل أنت متأكد من هذا الأجراء</h3>--}}
{{--                </div>--}}
{{--                <div class="modal-footer">--}}
{{--                    <button  class="btn btn-danger "  id="delete"  onclick="submit_form()" data-bs-dismiss="modal" >     تاكيد الحذف  </button>--}}
{{--                    <button   class="btn btn-info " id="cancel" data-bs-dismiss="modal" >   الغاء  </button>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}



@endsection


