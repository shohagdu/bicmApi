<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PublishedJournal;
use App\Models\User;
use App\Models\PublishAuthorDetail;
use Illuminate\Support\Facades\Storage;
use DB;

class PublishedJournalController extends Controller
{
    public function published_journal_list(){
        $info = PublishedJournal::orderBy('id', 'DESC')->get();
        foreach($info as $item){
            $url = Storage::url($item->pdfattachment);
            $item->attchpdf = $url;
        }

         if (!empty($info)) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Journal Get", 'data'=> $info]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }
    public function save_journal(Request $request){

        $published_info = new PublishedJournal(); 

        $published_info->paperId = date('ymd').time();
        $published_info->papertitle = $request->papertitle;
        $published_info->research_type = $request->research_type;
        $published_info->issueNo = $request->issueNo;
        $published_info->issueDate = $request->issueDate;
        $published_info->manuscriptNo = $request->manuscriptNo;
        $published_info->receivedDate = $request->receivedDate;
        $published_info->acceptedDate = $request->acceptedDate;
        $published_info->publishedonlineDate = $request->publishedonlineDate;
        $published_info->publishedInPrintDate = $request->publishedInPrintDate;
        $published_info->doilink = $request->doilink;
        $published_info->pages = $request->pages;
        $published_info->abstract = $request->abstract;
        $published_info->mainbody = $request->mainbody;
        $published_info->citeAs = $request->citeAs;
        $published_info->pdfattachment = $request->file('pdfattachment')->store('pdf', 'public');
        $published_info->entryDatetime = date('Y-m-d H:i:s');

       $response = $published_info->save();

        $authorlist =  $request->get('authorinfo');
        $authordata = (!empty($authorlist)? json_decode($authorlist,true):'') ;
       $data = []; 
       if(!empty($authordata)) {
           foreach ($authordata as $key => $item) {
               if ($key) {
                   $data[] = [
                       'paperId'     => $published_info->id,
                       'author_name' => (!empty($item['name'])?$item['name']:''),
                       'affiliation' => (!empty($item['affiliation'])?$item['affiliation']:''),
                       'authorEmail' => (!empty($item['email'])?$item['email']:''),
                       'authortype'  => (!empty($item['type'])?$item['type']:''),
                   ];
               }
           }
       }  

       $author = DB::table('sr_pub_author_details')->insert($data);

        if (!empty($response)) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Journal Submited"]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }
    
    public function published_journal_edit($id){
        $published_journal = PublishedJournal::find($id);

        return response()->json(['status' => 'success', 'message' =>  "Data Found", 'data' => $published_journal]);
    }
    public function published_journal_update(Request $request,$id){

        $published_info =  PublishedJournal::find($id); 

        $published_info->paperId =  $request->paperId;
        $published_info->papertitle = $request->papertitle;
        $published_info->research_type = $request->research_type;
        $published_info->issueNo = $request->issueNo;
        $published_info->issueDate = $request->issueDate;
        $published_info->manuscriptNo = $request->manuscriptNo;
        $published_info->receivedDate = $request->receivedDate;
        $published_info->acceptedDate = $request->acceptedDate;
        $published_info->publishedonlineDate = $request->publishedonlineDate;
        $published_info->publishedInPrintDate = $request->publishedInPrintDate;
        $published_info->doilink = $request->doilink;
        $published_info->pages = $request->pages;
        $published_info->abstract = $request->abstract;
        $published_info->mainbody = $request->mainbody;
        $published_info->citeAs = $request->citeAs;
        $published_info->pdfattachment = !empty($request->pdfattachment) ?  $request->file('pdfattachment')->store('pdf', 'public') : $request->prepdfattachment;
        $published_info->entryDatetime = date('Y-m-d H:i:s');

        //$response = $published_info->save();
        
        // $authorlist =  $request->get('authorinfo');
        // $authordata = (!empty($authorlist)? json_decode($authorlist,true):'') ;
        // $data = []; 
        // if(!empty($authordata)) {
        //    foreach ($authordata as $key => $item) {
        //        if ($key) {
        //            $data[] = [
        //                'paperId'     => $published_info->id,
        //                'author_name' => (!empty($item['name'])?$item['name']:''),
        //                'affiliation' => (!empty($item['affiliation'])?$item['affiliation']:''),
        //                'authorEmail' => (!empty($item['email'])?$item['email']:''),
        //                'authortype'  => (!empty($item['type'])?$item['type']:''),
        //            ];
        //        }
        //    }
        // }

        $papertitle = $request->papertitle;
        if ($published_info) {
            return response()->json(['status' => 'success', 'message' =>  "Succesfully Journal Updated", "data" =>$papertitle]);
        }else{
            return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        }
    }

    public function published_journal_delete($id){
        $publishedJournal = PublishedJournal::find($id);
        $delete = $publishedJournal->delete();

        return response()->json(['status' => 'success', 'message' =>  "Successful Delated"]);
    }

}
