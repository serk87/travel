<?php

namespace App\Http\Controllers\Developer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Attraction;

class AttractionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $attractions = Attraction::get();

        return view('developer.attractions.index', [
            'title' => 'Достопримечательности',
            'attractions' => $attractions
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('developer.attractions.create', [
            'title' => 'Создать достопримечательности',
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $new_attraction = new Attraction();
        $new_attraction->name = $request->name;
        $new_attraction->description = $request->description;
        $new_attraction->latitude = $request->latitude;
        $new_attraction->longitude = $request->longitude;
        $new_attraction->image = $request->image;
        $new_attraction['3d'] = $request['3d'];
        $new_attraction->save();
        return redirect()->route('attractions.index')->withSuccess('Достопримечательность добавлена ' . $new_attraction->name);;
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Attraction::where('id', $id)->delete();
        return redirect()->back()->withSuccess('Достопримечательность была успешно удалена');
    }
}
