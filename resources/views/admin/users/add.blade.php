@extends('admin.layouts.master')

@section('contents')
@if(count($errors)>0)
<div class="alert alert-danger">
  @foreach($errors->all() as $err)
    <li>{{$err}}</li>
  @endforeach
</div>
@endif
@if(session('msg')=='ok')
<div class="alert alert-success">
  Successfully added
</div>
@endif
  <form role="form" method="post" action="{{ route('users.store') }}">
    <div class="box-body">
      <div class="form-group">
        <label for="skill">Name</label><span class="text-danger">*</span>
        <input type="text" name="name" class="form-control"  placeholder="Name">
      </div>

      <div class="form-group">
        <label for="email">Email</label><span class="text-danger">*</span>
        <input type="email" name="email" class="form-control"  placeholder="email">
      </div>
       <div class="form-group">
        <label for="email">Password</label><span class="text-danger">*</span>
        <input type="password" name="password" class="form-control"  placeholder="password">
      </div>
      <div class="form-group">
        <label for="role">Role</label><span class="text-danger">*</span>
        <select  name="role" class="form-control">
          <option value="admin">Admin</option>
          <option value="author">Author</option>
           <option value="user">User</option>
        </select>
      </div>


    </div><!-- /.box-body -->
        <input type="hidden" name="_token" value="{{csrf_token()}}">
    <div class="box-footer">
      <button type="submit" class="btn btn-success btn-lg">Save</button>
    </div>
  </form>
@stop
