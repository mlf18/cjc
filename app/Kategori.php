<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    //
    public $timestamps=false;

    public function pemakalah(){
    	return $this->hasMany('App\Pemakalah');
    }

    public function reviewer(){
    	return $this->hasMany('App\Reviewer');
    }
}
