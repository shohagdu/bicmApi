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
       // $manuscript_info->pdfattachment = $request->file('pdfattachment')->store('pdf', 'public');
        $manuscript_info->submit_date_time = date('Y-m-d H:i:s');

        //$response = $manuscript_info->save();

        $authorlist =  $request->get('authorinfo');
        $authordata = (!empty($authorlist)? json_decode($authorlist,true):'') ;
        $adata = []; 
        if(!empty($authordata)) {
            foreach ($authordata as $key => $item) {
                if ($key) {
                    $adata[] = [
                        'paperUniqID_Author'     => $paperUniqID,
                        'first_name' => (!empty($item['name'])?$item['name']:''),
                        'email' => (!empty($item['email'])?$item['email']:''),
                        'organization_name' => (!empty($item['organization_name'])?$item['organization_name']:''),
                        'country' => (!empty($item['country'])?$item['country']:''),
                        'registered_id' => 1,
                    ];
                }
            }
        }  

         $author_insert = DB::table('sr_more_author_info')->insert($adata);

        $attachmentlist =  $request->get('attachinfo');
        $attachmentdata = (!empty($attachmentlist)? json_decode($attachmentlist,true):'') ;
        $data = []; 
        if(!empty($attachmentdata)) {
            foreach ($attachmentdata as $key => $item) {
                if ($key) {
                    $data[] = [
                        'paperId'     => $paperUniqID,
                        'attachment_name' => (!empty($item['attachment_name'])?$item['attachment_name']:''),
                        'attachment' => (!empty($item['attachment'])? $item->file('attachment')->store('manuscript', 'public'):''),
                        'attchment_time_date' => (!empty($item['date'])?$item['date']:''),
                    ];
                }
            }
        }  

        // $attachment_save = DB::table('sr_attachment_info')->insert($data);

        $response = true;
       
        if ($response) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Manuscript Submited", 'data'=> $adata]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }

    public function update_menuscript(Request $request, $id){

        $papertitle = $request->papertitle;
        return response()->json(['status' => 'success', 'message' =>  "Succesfully Manuscript Updated", 'data'=> $papertitle]);
    }
    public function published_menuscript_details ($id){
        $published_manuscript = PublishedManuscript::find($id);

        $paperUniqID = $published_manuscript->paperUniqID;
            
        if ($published_manuscript) {
            return response()->json(['status' => 'success', 'message' =>  "Data Found", "data" => [
                'published_manuscript' => $published_manuscript,
                'paperUniqID' => $paperUniqID
            ] ]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Data Not Found" , 'data'=> []]);
        }
    }
}
