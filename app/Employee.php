<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    // A single employee belongs to a single company
    public function company(){
        return $this->belongsTo('App\Company');
    }
}