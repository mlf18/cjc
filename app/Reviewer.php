<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reviewer extends Model
{
    //
	public $timestamps=false;
    public function user(){
        return $this->belongsTo('App\User');
    }
    public function kategori(){
    	return $this->belongsTo('App\Kategori');
    }

}
