@extends('site.layouts.others')

@section('contents')
  @if(isset($msg))
      <div class="alert alert-danger">{{$msg}}</div>
  @endif
<div class="info border-bottom padding-block text-center" style="border:0px;">
  <!-- start container -->
      <div class="container">
          <!-- start row -->
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-lg-8">
            <h3 class="title">You can login with these social services</h3>
            <div class="circle-block ">
              <a class="icon hover-animate" href="{{url('login/facebook')}}"><i class="fa fa-facebook"></i></a>
            </div>
            <div class="circle-block">
              <a class="icon hover-animate" href="{{url('login/github')}}"><i class="fa fa-github"></i></a>

            </div>
            <div class="circle-block">
              <a class="icon hover-animate" href="{{url('login/google')}}"><i class="fa fa-google"></i></a>

            </div>
            <div class="circle-block">
              <a class="icon hover-animate" href="{{url('login/twitter')}}"><i class="fa fa-twitter"></i></a>
            </div>
          </div>
          <div class="col-xs-12 col-sm-12 col-lg-4">
                  <h3 class="title title-login">Login form</h3>
                  <div class="contact-form">
                      @if(count($errors)>0)
                      <div class="alert alert-danger">
                        @foreach($errors->all() as $err)
                          <li>{{$err}}</li>
                        @endforeach
                      </div>
                      @endif
                      <form class="form-horizontal" role="form" method="POST" action="{{url('/login')}}">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                           <input type="email" class="form-control" name="email" value="{{ old('email') }}">
                            <input type="password" class="form-control" name="password">
                          <div class="footer-form">
                              <input type="submit" class="btn btn-color hover-animate" value="Login">
                          </div>
                      </form>
                  </div>
              </div>
      </div>
  </div>
</div>



@stop
