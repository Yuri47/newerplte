<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cash extends Model
{
    //
    protected $fillable = [
       'id', 'price', 'description' , 'type'
    ];
}
