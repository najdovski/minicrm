<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    // One company can have multiple employees
    public function employee(){
        return $this->hasMany('App\Employee');
    }
}