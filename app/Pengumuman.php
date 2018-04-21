<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengumuman extends Model
{
    //
    public function pemakalah(){
    	return $this->belongsTo('App\Pemakalah');
    }
}
