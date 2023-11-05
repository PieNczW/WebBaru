<?php

namespace App\Http\Controllers;

use App\Models\farrell;
use Illuminate\Http\Request;
/** */
class farrellController extends Controller
{
    public function getDataMovie(){
        $movieData = farrell::all();
        return view('master.home')->with(compact('movieData'));
    }
    public function getDataMovieById($id){
        $movie = farrell::find($id);
        return view('master.detail')->with(compact('movie'));
    }
}
