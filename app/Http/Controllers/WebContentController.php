<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\WebContent;

class WebContentController extends Controller
{
    public function store(Request $request)
    {
        //return response()->json(['status' => 'success', 'message' =>  "About  Successful Save"]);
        $web_content = new WebContent();
        
        $web_content->description = $request->description;
        $web_content->type = $request->type;
        $web_content->created_by  = 1;
        $web_content->created_ip  = request()->ip();
        $web_content->created_at  = date('Y-m-d H:i:s');

        if ($web_content->save()) {
            return response()->json(['status' => 'success', 'message' =>  "About  Successfully Save"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
        
    }
}
