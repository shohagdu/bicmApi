<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PublishedJournal;
use App\Models\User;
use DB;

class PublishedJournalController extends Controller
{
    public function published_journal_list(){
        $info = PublishedJournal::get();
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

       // $response = $published_info->save();

         $authorlist =  $request->get('authorinfo');
         $authordata = json_decode($authorlist, true);
         $data = [];
         foreach ($authordata as $key=> $item) {
            $data[] = [
                'name' => 1,
            ];
         }
 
         return response()->json(['status' => 'success', 'message' =>  "Succesfully Journal Submited", 'data'=> $data]);

        // if ($inputList) {
        //     return response()->json(['status' => 'success', 'message' =>  "Succesfully Journal Submited", 'data'=> $inputList]);
        // }else{
        //     return response()->json(['status' => 'error', 'message' =>  "Something Went Wrong"]);
        // }
    }
}
