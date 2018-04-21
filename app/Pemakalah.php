<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pemakalah extends Model
{
    //
    public function kategori(){
    	return $this->belongsTo('App\Kategori');
    }

    public function pengumuman(){
    	return $this->hasOne('App\Pengumuman');
    }
}
