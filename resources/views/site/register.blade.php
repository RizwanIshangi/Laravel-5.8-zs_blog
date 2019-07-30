@extends('site.layouts.others')


@section('contents')

<section class="content padding-block border-bottom">
      <!-- start container -->
      <div class="container">
          <!-- start row -->
          <div class="row">
              <div class="col-xs-12 col-sm-12 col-lg-6">
                  <h3 class="title title-contact">Map</h3>
                  <div id="map" class="map"></div>
              </div>
              <div class="col-xs-12 col-sm-12 col-lg-6">
                  <h3 class="title title-contact">Sign Up form</h3>
                  <!-- Start Contact Form -->
                  <div class="contact-form">
                      @if(count($errors)>0)
                      <div class="alert alert-danger">
                        @foreach($errors->all() as $err)
                          <li>{{$err}}</li>
                        @endforeach
                      </div>
                      @endif
                      @if(session('msg')=='ok')
                      <div class="alert alert-success">
                        Thank you, I'll contact you as soon as possible
                      </div>
                      @endif
                      <form action="{{url('/register')}}" id="contact-form" method="post">
                           <input type="hidden" name="_token" value="{{ csrf_token() }}">

                            <div class="form-group">
                                <input type="text" class="form-control" name="name" value="{{ old('name') }}" placeholder="Name">
                            </div>

                            <div class="form-group">
                                <input type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Email">
                            </div>
                            <div class="form-group">
                              <input type="password" class="form-control" name="password"  placeholder="Password">
                            </div>

                            <div class="form-group">
                                <input type="password" class="form-control" name="password_confirmation"  placeholder="Confirm Password">
                            </div>

                          
                          <div class="footer-form">
                              <input type="hidden" name="_token"value="{{csrf_token()}}">
                               <a class="btn btn-link" href="{{ url('/login') }}">Already have an account? Login!</a>
                              <input type="submit" class="btn btn-color hover-animate" value="Sign Up">
                          </div>
                      </form>
                  </div>
                  <!-- End Contact Form -->
              </div>
          </div>
          <!-- end row -->
      </div>
      <!-- end container -->
  </section>

@endsection
