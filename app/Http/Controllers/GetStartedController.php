<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Entrepreneur;
use App\Models\Commune;
use App\Models\IndustrySector;
use App\Http\Resources\CommuneListResource;
use App\Http\Resources\IndustrySectorListResource;
use Illuminate\Support\Facades\Validator;

class GetStartedController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = auth()->user();
        $profile = $user->entrepreneur;
        
        if($profile){
            return redirect()->route('home');
        }

        $communesQuery = Commune::all();
        $communes = CommuneListResource::collection($communesQuery);
       
        $industryQuery = IndustrySector::all();
        $industries = IndustrySectorListResource::collection($industryQuery);
        
        return view('getstarted', compact('user', 'profile', 'communes', 'industries'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $requestData = $request->all();
        $validator = Validator::make($requestData, [
            'name' => 'required|string|min:3|max:200',
            'phone' => 'required|string|min:3|max:22',
            'address' => 'nullable|string|max:300',
            'commune_id' => 'required|integer|exists:communes,id',
            'industry_sector_id' => 'required|integer|exists:industry_sectors,id',
        ]);

        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $user = auth()->user();

        $entrepreneur = Entrepreneur::create([
            'name' => $requestData['name'],
            'phone' => $requestData['phone'],
            'address' => $requestData['address'],
            'user_id' => $user->id,
            'commune_id' => $requestData['commune_id'],
            'industry_sector_id' => $requestData['industry_sector_id'],
        ]);

	    return back()->with('success','Item created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
