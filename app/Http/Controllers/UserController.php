<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class UserController extends Controller
{
    public function get_user_details($id){
        $query = DB::table('users as USR')
                                ->select('USR.*', 'REG.organization_name','REG.auth_title','REG.id as register_id','CON.country_name as country_name')
                                ->leftJoin('sr_registration AS REG', function($join){
                                    $join->on('REG.user_id', '=', 'USR.id');
                                 })
                                 ->leftJoin('sr_country_list AS CON', function($join){
                                    $join->on('CON.id', '=', 'REG.country');
                                 })
                                 ->where('USR.id', '=',$id);
                                 
                $user = $query->first();
        return response()->json(['status' => 'success', 'message' =>  "Data Found", 'data' => $user]);
    }

}
