<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pemakalah extends Model
{
    //
    public function pemakalah(){
    	return $this->belongsTo('App\Kategori');
    }
}
