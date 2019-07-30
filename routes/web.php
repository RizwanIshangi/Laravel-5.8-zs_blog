<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\Models\User;
use App\Models\Tags;
use App\Models\Tagged;
use App\Models\Diary;

Route::get('/', 'PublicContoller@index');
Route::get('/resume', 'PublicContoller@resumePage');
Route::get('/profile', 'PublicContoller@profilePage');
Route::get('/contact', 'PublicContoller@contactPage');
Route::post('/message', 'PublicContoller@makeContactRequest');
Route::get('profile/{id}', 'ProfileController@index');
Route::resource('diary','DiaryController');
Route::get('diary/category/{id}', 'DiaryController@getCategory');
Route::get('diary/read/{id}', 'DiaryController@getRead');
Route::get('diary/tag/{id}', 'DiaryController@getTags');

Route::group(['middleware' => 'auth', 'namespace' => 'Admin', 'prefix' => 'admin'], function () {
    Route::resources([
        //'diary' => 'DiaryController',
        //'resume' => 'WorkEduController', ['except' => ['index', 'create', 'store']],
        'users' => 'UsersController',
        'inbox' => 'InboxController'
    ]);
    
    Route::get('users/role/{id}/{role}','UsersController@role');
    Route::get('users/block/{id}/{status}','UsersController@block');

    Route::get('inbox/read/{id}','InboxController@getRead');

    Route::resource('admin/resume','WorkEduController', ['except' => ['index', 'create', 'store']]);
    Route::get('resume/edu','WorkEduController@getEdu');
    Route::post('resume/addedu','WorkEduController@postEdu');
    Route::get('resume/work','WorkEduController@getWork');
    Route::post('resume/addwork','WorkEduController@postWork');

    Route::resource('admin/diary','DiaryController', ['except' => ['index', 'create', 'store']]);
    Route::get('diary/all','DiaryController@getAll');
    Route::get('diary/new','DiaryController@getNew');
    Route::post('diary/addnew', 'DiaryController@postNew');
    Route::get('diary/edit/{id}', 'DiaryController@getEdit');
    Route::post('diary/editdiary/{id}', 'DiaryController@postEdit');
    Route::get('diary/category','DiaryController@getCategory');
    Route::post('diary/addcategory', 'DiaryController@postCategory');
    Route::get('diary/tags','DiaryController@getTags');
    Route::post('diary/addtags', 'DiaryController@postTags');

    Route::get('/', function() {
        return view('admin.layouts.master', [
            'pageInfo' => [
                'siteTitle' => 'Dashboard',
                'pageHeading' => 'Dashboard',
                'pageHeadingSlogan' => 'I write here what I learn']
        ]);
    });
});

Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('/login', 'Auth\LoginController@login');
Route::get('logout', 'LoginController@logout');

Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('register', 'Auth\RegisterController@register');

Route::get('login/facebook', 'LoginController@facebookLogin');
Route::get('login/github', 'LoginController@githubLogin');
Route::get('login/google', 'LoginController@googleLogin');
Route::get('login/twitter', 'LoginController@twitterLogin');

Route::get('callback/facebook', 'LoginController@callbackFacebook');
Route::get('callback/github', 'LoginController@callbackGithub');
Route::get('callback/google', 'LoginController@callbackGoogle');
Route::get('callback/twitter', 'LoginController@callbackTwitter');

Route::get('/tags', function (Tagx $tag) {
    $a = explode(',', '');
    dd($a);


});

