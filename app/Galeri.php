<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galeri extends Model
{
    //
    public function user(){
    	return $this->belongsTo('App\User');
    }
}
