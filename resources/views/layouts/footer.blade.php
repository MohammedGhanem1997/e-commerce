<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
    {{ csrf_field() }}
</form>
<hr/>

<script src="{{asset('js/my_script.js')}}"></script>

<script src="{{asset('js/jquery.min.js.js')}}"></script>
<!-- Plugins JS File -->
<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('js/jquery.hoverIntent.min.js')}}"></script>
<script src="{{asset('js/jquery.waypoints.min.js')}}"></script>
<script src="{{asset('js/superfish.min.js')}}"></script>
<script src="{{asset('js/owl.carousel.min.js')}}"></script>
<script src="{{asset('js/bootstrap-input-spinner.js')}}"></script>
<script src="{{asset('js/jquery.magnific-popup.min.js')}}"></script>
<script src="{{asset('js/jquery.plugin.min.js')}}"></script>
<script src="{{asset('js/jquery.countdown.min.js')}}"></script>

<!-- Main JS File -->
<script src="{{asset('js/main.js')}}"></script>
<script src="{{asset('js/demo-13.js')}}"></script>

<script type="text/javascript">


    $(function(){
        $('.custom-control-input').on('change',function(){
            setTimeout(()=>{
                $('#form').submit();
            },4000 )


        });
    });
</script>