<?php

namespace App\Http\Controllers;

use App\Models\Colleague;
use App\Models\Office;
use Illuminate\Http\Request;

class ColleagueController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = [];
        $data['officeInfo'] = Office::with('colleagues')->orderBy('id', 'desc')->get();
        return view('home', $data);
    }

    function fetch_data(Request $request)
    {
        if ($request->ajax()) {
            $data = Office::with('colleagues')->orderBy('id', 'desc')->get();
            echo json_encode($data);
        }
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Store Office Information
        // $office = new Office;
        // $office->office_name = $request->input('office_name');
        // $office->office_address = $request->input('office_address');
        // $office->office_phone = $request->input('office_phone');
        // // Add other fields as needed
        // $office->save();
        // dd($request->wantsJson(), $request->ajax());


        // if ($request->ajax()) {
            $officeData = array(
                'office_name'    =>  $request->office_name,
                'office_address'     =>  $request->office_address,
                'office_phone'     =>  $request->office_phone,
                'application_letter'     =>  $request->application_letter
            );

            $id = Office::insertGetId($officeData);

            // $colleagueData = array(
            //     'colleague_name'    =>  $request->colleague_name,
            //     'colleague_mobile'     =>  $request->colleague_mobile,
            //     'colleague_address'     =>  $request->colleague_address,
            //     'photo'     =>  $request->photo
            // );

            $colleague_name = $request->input('colleague_name', []);
            $colleague_mobile = $request->input('colleague_mobile', []);
            $colleague_address = $request->input('colleague_address', []);
            // Store Colleague Information
            $results = [];
            foreach ($colleague_name as $index => $colleagueData) {
                $results[] = [
                    "office_id" => $id,
                    "colleague_name" => $colleague_name[$index],
                    "colleague_mobile" => $colleague_mobile[$index],
                    "colleague_address" => $colleague_address[$index]
                ];
            }
            $created = Colleague::insert($results);
            // if ($id > 0) {
            //     echo '<div class="alert alert-success">Data Inserted</div>';
            // }
        // }


        //   dd($request->input('colleague_name'));

        //   $colleague = new Colleague;
        //   $colleague->office_id = $office->id;
        //   $colleague->colleague_name = $colleagueData['colleague_name'];
        //   $colleague->colleague_mobile = $colleagueData['colleague_mobile'];
        //   $colleague->colleague_address = $colleagueData['colleague_address'];
        //   // Add other fields as needed
        //   $colleague->save();
        //   }


        // Redirect to the office list or show success message
          return redirect()->route('index')->with('status', 'Data saved successfully');


    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Colleague  $colleague
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Colleague $colleague)
    {
        if ($request->ajax()) {
            $data = array(
                $request->column_name       =>  $request->column_value
            );
            DB::table('tbl_sample')
                ->where('id', $request->id)
                ->update($data);
            echo '<div class="alert alert-success">Data Updated</div>';
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Colleague  $colleague
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Colleague $colleague)
    {
        if ($request->ajax()) {
            Office::where('id', $request->id)
                ->delete();
            echo '<div class="alert alert-success">Data Deleted</div>';
        }
    }
}
