




</div>
</div>


</div>

<!-- Start Js -->
{{--<script src="{{ asset('js/admin_script.js') }}"></script>--}}

{{--<script src="{{ asset('js\all.min.js') }}" ></script>--}}


<script src="https://cdn.ckeditor.com/ckeditor5/31.1.0/classic/ckeditor.js"></script>

{{--<script src="{{ asset('js\admin.js') }}" ></script>--}}
<!-- End Js -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/dt/jq-2.1.4,jszip-2.5.0,pdfmake-0.1.18,dt-1.10.9,af-2.0.0,b-1.0.3,b-colvis-1.0.3,b-html5-1.0.3,b-print-1.0.3,se-1.0.1/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/r/dt/jq-2.1.4,jszip-2.5.0,pdfmake-0.1.18,dt-1.10.9,af-2.0.0,b-1.0.3,b-colvis-1.0.3,b-html5-1.0.3,b-print-1.0.3,se-1.0.1/datatables.min.js"></script>

<script src="{{ asset('js\datatable.js') }}"></script>



 <script>

         ClassicEditor
                                .create( document.querySelector( '#editor' ) )
                                .then( editor => {
                                        console.log( editor );
                                } )
                                .catch( error => {
                                        console.error( error );
                                } );
                </script>
<form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
    @csrf
</form>
{{--<script src="{{ asset('js/my_script.js') }}"></script>--}}


<script src="{{ asset('js/app.js') }}"></script>
<script src="{{ asset('js/admin_script.js') }}"></script>

{{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--}}



</body>

</html>















