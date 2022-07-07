<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\WebContent;
use DB;

class WebContentController extends Controller
{
    public function about(){
        $about= WebContent::where('type', 1)->orderBy('id','DESC')->first();
        if(!empty($about)){
            return response()->json(['status' => 'success', 'message' => 'Data Found', 'data'=> $about ]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  'Data Not Found', 'data'=> '' ]);
        }
    }
    public function publisherinformation(){
        $publisherinformation= WebContent::where('type', 3)->orderBy('id','DESC')->first();
        if(!empty($publisherinformation)){
            return response()->json(['status' => 'success', 'message' => 'Data Found', 'data'=> $publisherinformation ]);
        }else{
            return response()->json(['status' => 'error', 'message' => 'Data Not Found', 'data'=> '' ]);
        }
    }
    public function permission(){
        $permission= WebContent::where('type', 5)->orderBy('id','DESC')->first();
        if(!empty($permission)){
            return response()->json(['status' => 'success', 'message' => 'Data Found', 'data'=> $permission ]);
        }else{
            return response()->json(['status' => 'error', 'message' => 'Data Not Found', 'data'=> '' ]);
        }
    }
    public function openaccess(){
        $openaccess= WebContent::where('type', 7)->orderBy('id','DESC')->first();
        if(!empty($openaccess)){
            return response()->json(['status' => 'success', 'message' => 'Data Found', 'data'=> $openaccess ]);
        }else{
            return response()->json(['status' => 'error', 'message' => 'Data Not Found', 'data'=> '' ]);
        }
    }
    public function store(Request $request)
    {
        if (WebContent::where('type', '=', $request->type)->exists()) {

            $web_content_data = [
                'description' => $request->description,
                'type' => $request->type,
                'updated_by' => 1,
                'updated_ip' => request()->ip(),
                'updated_at' => date('Y-m-d H:i:s'),
            ];

            $save = DB::table('web_contents')->where('type', $request->type)->update($web_content_data);
            
        }else{

            $web_content_data = [
                'description' => $request->description,
                'type' => $request->type,
                'created_by' => 1,
                'created_ip' => request()->ip(),
                'created_at' => date('Y-m-d H:i:s'),
            ];

            $save = DB::table('web_contents')->insert($web_content_data);
        }

        if ($save) {
            return response()->json(['status' => 'success', 'message' =>  "Successfully Saved"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }
}
