<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Equipament extends Model
{
    //

    protected $fillable = [
        'client_id','type', 'serialNumber', 'mark', 'design', 'observations', 'problem'
    ];
}
