<?php

namespace App\Classes;

use DB;

/**
 * 
 */
class GlobalFunction
{
    
   public function UserDetail()
   {
   		$rec=DB::table('tags')->select('*')->get();
   		//echo '<pre>';print_r($rec);exit;
       return $rec;
   }
}
