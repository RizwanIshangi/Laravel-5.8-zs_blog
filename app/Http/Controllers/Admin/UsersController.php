<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\UserEditRequest;
use Validator;
use Hash;
//use Event;

//use App\Events\ChangeRoleEvent;

use App\Models\User;

class UsersController extends Controller
{
    function __construct()
    {
        $this->middleware('admin');
    }

    public function show()
    {

        $this->middleware('admin');

        $users=User::paginate(20);
        return view('admin.users.manage', [
          'pageInfo'=>
           [
            'siteTitle'        =>'Manage Users',
            'pageHeading'      =>'Manage Users',
            'pageHeadingSlogan'=>'Here the section to manage all registered users'
            ]
            ,
            'data'=>
            [
               'users'      =>  $users
              ]
          ]);
    }

    public function create()
    {
        return view('admin.users.add', [
          'pageInfo'=>
           [
            'siteTitle'        =>'Add User',
            'pageHeading'      =>'Add User',
            'pageHeadingSlogan'=>'Here the section to edit user'
            ]
          ]);
    }
    public function store(Request $req)
    {

        $user=new User;
          $rules=[
          'name'=>['required','max:255'],
          'email'=>['required','email','max:255','unique:users'],
          'password'=>['required','min:6']
        ];

        $valid=Validator::make($req->input(), $rules);
        if(!$valid->fails()){
            $user=new User;
            $user->name=$req->input('name');
            $user->email=$req->input('email');
            $user->password=bcrypt($req->input('password'));
            $user->role=$req->input('role');
            $user->status=0;
            $user->image='assets/img/avatar.png';
            if($user->save()){
                return redirect()->back()->with('msg', 'ok');
            }
        }else{
          return redirect()->back()->withErrors($valid->errors());
        }  
    }

    public function edit($id)
    {
        $this->middleware('admin');

        $user=User::find($id);
        return view('admin.users.edit', [
          'pageInfo'=>
           [
            'siteTitle'        =>'Edit User',
            'pageHeading'      =>'Edit User',
            'pageHeadingSlogan'=>'Here the section to edit user'
            ]
            ,
            'data'=>
            [
               'user'      =>  $user
              ]
          ]);
    }
    public function update(UserEditRequest $req, $id)
     {

        $user = User::find($id);
        $user->name=$req->input('name');
        if($user->save()){
            return redirect()->back()->with('msg', 'ok');
        }
     }
    public function role($user, $role)
    {
        $roles=[
            'admin',
            'author',
            'user'
        ];

        if(in_array($role, $roles)){
            $user=User::findOrFail($user);
            $user->role=strtolower($role);
            if($user->save()){
                return redirect()->back()->with('msg', 'ok');
            }

        }

        return redirect()->back()->with('msg', 'error');
    }
   public function block($user,$status)
    {
      $user=User::findOrFail($user);
      $user->status=$status;
      if($user->save()){
         return redirect()->back()->with('msg', 'ok');
      }
      return redirect()->back()->with('msg', 'error');
    }
}
