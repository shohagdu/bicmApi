<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Journal;

class JournalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return Journal::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request->all());
        try {
            $jounal = new Journal();
            $jounal->paperId            = (!empty($request->paperId) ? $request->paperId : NULL);
            $jounal->papertitle         = (!empty($request->papertitle) ? $request->papertitle:NULL);
            $jounal->issueNo            = (!empty($request->issueNo) ? $request->issueNo:NULL);
            $jounal->issueDate          = (!empty($request->issueDate) ? date('Y-m-d',strtotime($request->issueDate)):NULL);
            $jounal->manuscriptNo       = (!empty($request->manuscriptNo) ? $request->manuscriptNo:NULL);
            $jounal->receivedDate       = (!empty($request->receivedDate) ? date('Y-m-d',strtotime($request->receivedDate)):NULL);
            $jounal->acceptedDate       = (!empty($request->acceptedDate) ? date('Y-m-d',strtotime($request->acceptedDate)):NULL);
            $jounal->publishedonlineDate   = (!empty($request->publishedonlineDate) ? date('Y-m-d',strtotime($request->publishedonlineDate)):NULL);
            $jounal->publishedInPrintDate   = (!empty($request->publishedInPrintDate) ? date('Y-m-d',strtotime($request->publishedInPrintDate)):NULL);
            $jounal->doilink            = (!empty($request->doilink) ? $request->doilink:NULL);
            $jounal->pages              = (!empty($request->pages) ? $request->pages:NULL);
            $jounal->abstract           = (!empty($request->abstract) ? $request->abstract:NULL);
            $jounal->mainbody           = (!empty($request->mainbody) ? $request->mainbody:NULL);
            $jounal->referencesx        = (!empty($request->referencesx) ? $request->referencesx:NULL);
            $jounal->citeAs             = (!empty($request->citeAs) ? $request->citeAs:NULL);
            $jounal->pdfattachment      = (!empty($request->pdfattachment) ? $request->pdfattachment:NULL);
            $jounal->entryDatetime      = (!empty($request->entryDatetime) ? $request->entryDatetime:NULL);
            $jounal->countMostView      = (!empty($request->countMostView) ? $request->countMostView:NULL);
            $jounal->research_type      = (!empty($request->research_type) ? $request->research_type:NULL);
            $jounal->created_by         = (!empty($request->created_by) ? $request->created_by:NULL);
            $jounal->created_ip         = (!empty($request->created_ip) ? $request->created_ip:NULL);

            if ($jounal->save()) {
                return response()->json(['status' => 'success', 'message' => 'Successfully Create New Journal']);
            }
        }catch (\Exception $e){
            return response()->json(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try {
            $jounal =  Journal:: findOrFail($id);
            $jounal->paperId            = (!empty($request->paperId) ? $request->paperId : NULL);
            $jounal->papertitle         = (!empty($request->papertitle) ? $request->papertitle:NULL);
            $jounal->issueNo            = (!empty($request->issueNo) ? $request->issueNo:NULL);
            $jounal->issueDate          = (!empty($request->issueDate) ? date('Y-m-d',strtotime($request->issueDate)):NULL);
            $jounal->manuscriptNo       = (!empty($request->manuscriptNo) ? $request->manuscriptNo:NULL);
            $jounal->receivedDate       = (!empty($request->receivedDate) ? date('Y-m-d',strtotime($request->receivedDate)):NULL);
            $jounal->acceptedDate       = (!empty($request->acceptedDate) ? date('Y-m-d',strtotime($request->acceptedDate)):NULL);
            $jounal->publishedonlineDate   = (!empty($request->publishedonlineDate) ? date('Y-m-d',strtotime($request->publishedonlineDate)):NULL);
            $jounal->publishedInPrintDate   = (!empty($request->publishedInPrintDate) ? date('Y-m-d',strtotime($request->publishedInPrintDate)):NULL);
            $jounal->doilink            = (!empty($request->doilink) ? $request->doilink:NULL);
            $jounal->pages              = (!empty($request->pages) ? $request->pages:NULL);
            $jounal->abstract           = (!empty($request->abstract) ? $request->abstract:NULL);
            $jounal->mainbody           = (!empty($request->mainbody) ? $request->mainbody:NULL);
            $jounal->referencesx        = (!empty($request->referencesx) ? $request->referencesx:NULL);
            $jounal->citeAs             = (!empty($request->citeAs) ? $request->citeAs:NULL);
            $jounal->pdfattachment      = (!empty($request->pdfattachment) ? $request->pdfattachment:NULL);
            $jounal->entryDatetime      = (!empty($request->entryDatetime) ? $request->entryDatetime:NULL);
            $jounal->countMostView      = (!empty($request->countMostView) ? $request->countMostView:NULL);
            $jounal->research_type      = (!empty($request->research_type) ? $request->research_type:NULL);
            $jounal->updated_by         = (!empty($request->updated_by) ? $request->updated_by:NULL);
            $jounal->updated_ip         = '120.150.150.250';

            if ($jounal->save()) {
                return response()->json(['status' => 'success', 'message' => 'Successfully Update Journal Information']);
            }
        }catch (\Exception $e){
            return response()->json(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        try {
            $jounal =  Journal:: findOrFail($id);
            $jounal->is_active            = 0;

            if ($jounal->save()) {
                return response()->json(['status' => 'success', 'message' => 'Successfully Delete Journal Information']);
            }
        }catch (\Exception $e){
            return response()->json(['status' => 'error', 'message' => $e->getMessage()]);
        }
    }
}
