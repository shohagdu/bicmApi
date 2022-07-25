<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\VolumeIssue;

class VolumeIssueController extends Controller
{
    public function volume_issue_list(){
        $info = VolumeIssue::orderBy('id', 'DESC')->get();

        if (!empty($info)) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Volume Issue Get", 'data'=> $info]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }

    public function save_volume_issue(Request $request){

        $volume_issue_data = new VolumeIssue();
        
        $volume_issue_data->name = $request->name;

        $response = $volume_issue_data->save();

        if ($response) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Volume Issue Save"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }
    
    public function volume_issue_edit( $id){
        $volume_issue_data =  VolumeIssue::find($id);

        if ($volume_issue_data) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Volume Issue Updated" , "data" => $volume_issue_data]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }

    public function volume_issue_update(Request $request, $id){

        $volume_issue_data =  VolumeIssue::find($id);
        
        $volume_issue_data->name = $request->name;

        $response = $volume_issue_data->save();

        if ($response) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Volume Issue Updated"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }
    public function volume_issue_delete($id){

        $volume_issue_data =  VolumeIssue::find($id);
    
        $response = $volume_issue_data->delete();

        if ($response) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Volume Issue Delated"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }
}
