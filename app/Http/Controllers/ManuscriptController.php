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
        $manuscript_info->authorid = $request->authorId;
        $manuscript_info->description = $request->description;
       // $manuscript_info->pdfattachment = $request->file('pdfattachment')->store('pdf', 'public');
        $manuscript_info->submit_date_time = date('Y-m-d H:i:s');

        $response = $manuscript_info->save();

        if ($response) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Manuscript Submited"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }

    public function update_menuscript(Request $request){

        $id = $request->id;
        $papertitle = $request->papertitle;
        return response()->json(['status' => 'success', 'message' =>  "Succesfully Manuscript Updated", 'data'=> $id]);
    }
    public function published_menuscript_details ($id){
        $published_manuscript = PublishedManuscript::find($id);

        $paperUniqID = $published_manuscript->paperUniqID;
        $authorid = $published_manuscript->authorid;


         $author_list = DB::table('sr_more_author_info')
                        ->where('paperUniqID_Author', $paperUniqID)
                        ->orderBy('id','DESC')->get();

        $attachment_file_list = DB::table('sr_attachment_info')
                    ->where('paperId', $paperUniqID)
                    ->orderBy('id','DESC')->get();

        $author_menuscript = DB::table('users as USR')
                    ->select('USR.id as userid', 'REG.auth_title','REG.first_name','REG.lastname', 'REG.organization_name', 'REG.email', 'REG.country')
                    ->leftJoin('sr_registration as REG', function($join){
                        $join->on('REG.user_id', '=', 'USR.id');
                    })
                    ->where('USR.id','=', $authorid)
                    ->first();                            
            
        if ($published_manuscript) {
            return response()->json(['status' => 'success', 'message' =>  "Data Found", "data" => [
                'published_manuscript' => $published_manuscript,
                'author_list' => $author_list,
                'attachment_file_list' => $attachment_file_list,
                'author_menuscript' => $author_menuscript
            ] ]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Data Not Found" , 'data'=> []]);
        }
    }

    public function published_menuscript_get ($id){
        $published_manuscript = PublishedManuscript::where('authorid', $id )->orderBy('id', 'DESC')->get();

        if ($published_manuscript) {
            return response()->json(['status' => 'success', 'message' =>  "Data Found", "data" => $published_manuscript ]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Data Not Found" , 'data'=> []]);
        }
    }
    public function reviewer_menuscript_list ($id){
        $query = DB::table('sr_editor_reviwer_assign_info as RES')
                                    ->select('RES.id as asignid', 'MEPS.paperUniqID','MEPS.papertilte', 'MEPS.submit_date_time')
                                    ->leftJoin('sr_menuscript_info as MEPS', function($join){
                                    $join->on('MEPS.paperUniqID', '=', 'RES.paperId');
                                    })
                                    ->where('RES.assignID', '=', $id);
             $reviewer_manuscript =  $query->get();                     

        if ($reviewer_manuscript) {
            return response()->json(['status' => 'success', 'message' =>  "Data Found", "data" => $reviewer_manuscript ]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Data Not Found" , 'data'=> []]);
        }
    }

    public function add_new_coauthor(Request $request){ 

        $paperUniqID = $request->paperUniqID;

        $adata = [
            'paperUniqID_Author'     => $paperUniqID,
            'first_name' => (!empty($request->name) ? $request->name : ''),
            'email' => (!empty($request->email)?  $request->email : ''),
            'organization_name' => (!empty($request->organization_name)? $request->organization_name:''),
            'country' => (!empty($request->country)? $request->country:''),
            'registered_id' => 0,
        ];

        $author_insert = DB::table('sr_more_author_info')->insert($adata);

        if ($author_insert) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Co Author Added", 'data'=> $adata]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }

    public function manuscript_coauthor_delete($id){
        $author_delete = DB::table('sr_more_author_info')->where('id', $id)->delete();
        
        if ($author_delete) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Co Author Delated"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }

    public function add_new_menuscript_attahment(Request $request){ 

        $paperUniqID = $request->paperUniqID;

        $attachmentFile = $request->file('attachment')->store('manuscript', 'public');
        $attachdata = [
            'paperId'     => $paperUniqID,
            'attachment_name' => (!empty($request->attachment_name) ? $request->attachment_name : ''),
            'attachment' => (!empty($attachmentFile)?  $attachmentFile : ''),
            'attchment_time_date' => date('Y-m-d H:i:s', strtotime($request->date)),
        ];

        $attachment_insert = DB::table('sr_attachment_info')->insert($attachdata);

        if ($attachment_insert) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Attachment Added", 'data'=>$attachdata]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }

    public function get_menuscript_user($id){
        $query = DB::table('users as USR')
                     ->select('USR.id as userid', 'REG.first_name','REG.lastname', 'REG.organization_name', 'REG.email', 'REG.country')
                     ->lefJoin('sr_registration as REG', function($join){
                        $join->on('REG.user_id', '=', 'USR.id');
                     })
                     ->where('USR.id','=', $id);

            $data =    $query->first();

            if ($author_data) {
                return response()->json(['status' => 'success', 'message' =>  "Succesfully  Author Get", 'data'=>$data]);
            }else{
                return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
            }
    }

    public function assign_menuscript_reviewer(Request $request){
        $reviewer = $request->reviewer;
        $paperId  = $request->paperId;
        $userId   = $request->userId;

        $data = [
            'paperId'   => $paperId,
            'entryBy'   => $userId,
            'assignID'  => $reviewer,
            'cstatus'   => 1,
            'type'      => 2,
            'entryDate' =>  date('Y-m-d H:i:s')
        ];

        $reviewer_insert = DB::table('sr_editor_reviwer_assign_info')->insert($data);

        $status_menuscript=['status' => 3];

        $status_menuscript_update = DB::table('sr_menuscript_info')->where('paperUniqID', '=',$paperId )->update($status_menuscript);

        if ($reviewer_insert) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully  Reviewer Assign", 'data'=>$data]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }

    }
}
