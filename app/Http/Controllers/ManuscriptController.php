<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PublishedManuscript;
use DB;

class ManuscriptController extends Controller
{

    public function published_menuscript_list (){
        $published_manuscript = PublishedManuscript::where('status', 0)->orderBy('id', 'DESC')->get();

        if ($published_manuscript) {
            return response()->json(['status' => 'success', 'message' =>  "Data Found", "data" => $published_manuscript ]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Data Not Found" , 'data'=> []]);
        }
    }
    public function save_menuscript(Request $request){

        $get_menuscript= DB::table('sr_menuscript_info')->orderBy('id', 'DESC')->first();
        $pid = $get_menuscript->id+1;
        $paperUniqID  = 'JFMG-'.date('Ym').'-'.str_pad($pid,5,"0",STR_PAD_LEFT);

        $manuscript_info = new PublishedManuscript(); 
        $manuscript_info->paperUniqID = $paperUniqID;
        $manuscript_info->papertilte = $request->papertitle;
        $manuscript_info->abstract = $request->abstract;
        $manuscript_info->keyword = $request->keyword;
        $manuscript_info->authorid = 1;
        $manuscript_info->description = $request->description;
        $manuscript_info->pdfattachment = $request->file('pdfattachment')->store('pdf', 'public');
        $manuscript_info->submit_date_time = date('Y-m-d H:i:s');

        $response = $manuscript_info->save();

        $authorData = [
            'paperUniqID_Author' => $paperUniqID,
            'registered_id' => $request->registered_id,
            'first_name' => $request->first_name,
            'email' => $request->email,
            'organization_name' => $request->organization_name,
            'country' => $request->country,
        ];

        $author_insert = DB::table('sr_more_author_info')->insert($authorData);
       
        if ($response) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Manuscript Submited"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }
}
