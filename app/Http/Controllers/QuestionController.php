<?php

namespace App\Http\Controllers;

use App\Models\Question;
use Carbon\Carbon;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function create()
    {
        return view('question.create');
    }
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required',
            'type'=>'required',
        ]);
        Question::create([
            'title'=> $request->title,
            'type'=>$request->type,
            'options'=>'demo Text',
            'right_answer'=>'demo Text',
            'status'=>'1',
            'updated_at'=> Carbon::now(),

        ]);
        return redirect()->back();
    }
    public function edit()
    {
        return view('home');
    }
    public function update()
    {
        return view('home');
    }
}
