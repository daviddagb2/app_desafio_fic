<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Entrepreneur;
use App\Models\Commune;
use App\Models\DocumentAssignment;
use App\Models\IndustrySector;
use App\Http\Resources\CommuneListResource;
use App\Http\Resources\IndustrySectorListResource;
use Illuminate\Support\Facades\Validator;

class EntrepreneurController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = auth()->user();
        $communesQuery = Commune::all();
        $communes = CommuneListResource::collection($communesQuery);
        $industryQuery = IndustrySector::all();
        $industries = IndustrySectorListResource::collection($industryQuery);
        return view('entrepreneurs.add', compact('user', 'communes', 'industries'));
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

        return redirect('/entrepreneur/' . $entrepreneur->id)->with('success','Item created successfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request, $id)
    {
        $user = auth()->user();
        $communesQuery = Commune::all();
        $communes = CommuneListResource::collection($communesQuery);
        $industryQuery = IndustrySector::all();
        $industries = IndustrySectorListResource::collection($industryQuery);

        $entrepreneur = Entrepreneur::findOrFail($id);


         if($entrepreneur){
            $documentList = DocumentAssignment::where('commune_id', $entrepreneur->commune_id)
            ->where('industry_sector_id', $entrepreneur->industry_sector_id)
            ->with('document')
            ->get();
        }

        return view('entrepreneurs.edit', compact('user', 'entrepreneur', 'communes', 'industries', 'documentList'));
    }


     /**
     * Display the specified resource.
     */
    public function documentInfo(Request $request, $id)
    {
        $user = auth()->user();
        $communesQuery = Commune::all();
        $communes = CommuneListResource::collection($communesQuery);
        $industryQuery = IndustrySector::all();
        $industries = IndustrySectorListResource::collection($industryQuery);

        $entrepreneur = Entrepreneur::findOrFail($id);


         if($entrepreneur){
            $documentList = DocumentAssignment::where('commune_id', $entrepreneur->commune_id)
            ->where('industry_sector_id', $entrepreneur->industry_sector_id)
            ->with('document')
            ->get();
        }

        return view('entrepreneurs.show', compact('user', 'entrepreneur', 'communes', 'industries', 'documentList'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
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

        Entrepreneur::where('id', $id)->update([
            'name' => $requestData['name'],
            'phone' => $requestData['phone'],
            'address' => $requestData['address'],
            'commune_id' => $requestData['commune_id'],
            'industry_sector_id' => $requestData['industry_sector_id'],
        ]);

        return redirect('/entrepreneur/' . $id)->with('success','Updated successfully');
    }

} 