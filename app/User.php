<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function superadmin(){
        return $this->hasOne('App\Superadmin');
    }

    public function reviewer(){
        return $this->hasOne('App\Reviewer');
    }

    public function reviewer(){
        return $this->hasMany('App\Agenda');
    }

    public function reviewer(){
        return $this->hasMany('App\Berita');
    }

    public function reviewer(){
        return $this->hasMany('App\Galeri');
    }

    public function reviewer(){
        return $this->hasMany('App\Pengumuman');
    }

    public function slider(){
        return $this->hasMany('App\Slider');
    }
}
