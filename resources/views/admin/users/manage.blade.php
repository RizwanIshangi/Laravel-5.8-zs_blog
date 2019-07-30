@extends('admin.layouts.master')

@section('contents')
    <div class="row">
        <div class="col-sm-12">
            <a href="{{url('admin/users/create')}}" class="btn btn-success">New User</a>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="box">
                <div class="box-body">
                  @if(session('msg')=='ok')
                  <div class="alert alert-success">
                    Successfully performed
                  </div>
                  @endif
                  @if(session('msg')=='error')
                  <div class="alert alert-danger">
                    Unable to perform action
                  </div>
                  @endif
                  <table class="table table-bordered">
                    <tbody><tr>
                      <th style="width: 10px">#</th>
                      <th>Photo</th>
                      <th>Name</th>
                      <th>Email</th>
                      <th>Role</th>
                      <th>Joining Date</th>
                      <th style="width: 100px">Action</th>
                    </tr>
                    @foreach($data['users'] as $user)
                    <tr>
                      <td>{{$user->id}}</td>
                      <td><img src="{{url($user->image)}}" alt="{{$user->name}}" style="width:50px;" class="img-responsive img-thumbnail" /></td>
                      <td valign="middle"><a href="{{url('profile/'.$user->id)}}" target="_blank">{{$user->name}}</a></td>
                      <td>{{$user->email}}</td>
                      <td>{{ucfirst($user->role)}}</td>
                      <td>{{date('M d, Y', strtotime($user->created_at))}}</td>
                      <td>
                          <a href="{{url('admin/users/'.$user->id).'/edit'}}" class="btn btn-info btn-xs">Edit</a>
                          @if($user->status==0)
                            <a href="{{url('admin/users/block/'.$user->id.'/1')}}" class="btn btn-danger btn-xs del">Block</a>
                          @elseif($user->status==1)
                          <a href="{{url('admin/users/block/'.$user->id.'/0')}}" class="btn btn-danger btn-xs del">Un-Block</a>
                         @endif
                          <div class="btn-group">
                              <button type="button" class="btn btn-warning btn-xs dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Change Role <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu">
                                <li><a href="{{url('admin/users/role/'.$user->id.'/user')}}">User</a></li>
                                <li><a href="{{url('admin/users/role/'.$user->id.'/author')}}">Author</a></li>
                                <li><a href="{{url('admin/users/role/'.$user->id.'/admin')}}">Admin</a></li>

                              </ul>
                            </div>


                      </td>
                    </tr>
                      @endforeach

                  </tbody></table>
                </div><!-- /.box-body -->

                <div class="box-footer clearfix">
                  <ul class="pagination pagination-sm no-margin pull-right">
                      @if($data['users']->previousPageUrl())

                        <li><a class="next page-numbers" href="{{$data['users']->previousPageUrl()}}"><< Previous</a></li>

                      @endif

                      @if($data['users']->hasMorePages())

                        <li><a class="next page-numbers" href="{{$data['users']->nextPageUrl()}}">Next >></a></li>

                      @endif
                  </ul>
                </div>

              </div>
        </div>
    </div>

@endsection
