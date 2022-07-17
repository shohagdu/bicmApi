<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Registration;
use DB;

class RegistrationController extends Controller
{
    public function author_list(){
        $query = DB::table('sr_registration as REG')
                                ->select('REG.*', 'CON.country_name as country_name')
                                ->leftJoin('sr_country_list AS CON', function($join){
                                    $join->on('CON.id', '=', 'REG.country');
                                 })
                                 ->where('REG.userType', '=',1)
                                 ->orderBy('REG.id','DESC');
                $author_list = $query->get();
        return response()->json(['status' => 'success', 'message' =>  "Data Found", 'data' => $author_list]);
    }

    public function author_edit($id){
        $author = Registration::find($id);

        return response()->json(['status' => 'success', 'message' =>  "Data Found", 'data' => $author]);
    }

    public function author_update(Request $request, $id)
    {
        $first_name = $request->first_name;
        $lastname = $request->lastname;
        $email = $request->email;
        $phone_no = $request->phone_no;
        $password = $request->password;
        $auth_title = $request->auth_title;
        $user_type = $request->user_type;
        $alt_email = $request->alt_email;
        $organization_name = $request->organization_name;
        $country = $request->country;
        $user_id = $request->user_id;

        // Check if field is not empty
        if (empty($first_name) or empty($email) or empty($password)) {
            return response()->json(['status' => 'error', 'message' => 'You must fill all the fields']);
        }
        // Check if email is valid
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return response()->json(['status' => 'error', 'message' => 'You must enter a valid email']);
        }
        // Check if password is greater than 5 character
        if (strlen($password) < 6) {
            return response()->json(['status' => 'error', 'message' => 'Password should be min 6 character']);
        }

        // $user = new User();
        // $user->name = $first_name." ".$lastname;
        // $user->email = $email;
        // $user->password = bcrypt($password);
        // $user->user_type = $user_type;
        // $seve_user = $user->save();

        $registration = Registration::find($id);
        $registration->user_id = $user_id;
        $registration->first_name = $first_name;
        $registration->lastname = $lastname;
        $registration->email = $email;
        $registration->phone_no = $phone_no;
        $registration->auth_title = $auth_title;
        $registration->userType = $user_type;
        $registration->alt_email = $alt_email;
        $registration->organization_name = $organization_name;
        $registration->country = $country;

        if ($registration->save()) {
            return response()->json(['status' => 'success', 'message' =>  " Successful Updated"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
        
    }

    public function author_delete($id){
        $author = Registration::find($id);
        $delete = $author->delete();

        return response()->json(['status' => 'success', 'message' =>  "Successful Delated"]);
    }

}
