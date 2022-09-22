<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Question extends Model
{
    use HasFactory;




    protected $primaryKey = 'id';
    protected $table = 'questions';
    protected $guarded = [];
    public $timestamps = true;

    // public static function boot() {
    //     parent::boot();
    //     static::creating(function($post) {
    //         // $post->created_by = Auth::user()->id;
    //         $post->updated_by = Auth::user()->id;
    //     });

    //     static::updating(function($post) {
    //         $post->updated_by = Auth::user()->id;
    //     });
    // }

}
