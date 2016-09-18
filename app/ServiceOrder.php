<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceOrder extends Model
{
    //
    protected $fillable = [
        'client_id', 'equipament_id', 'state', 'technical', 'observations', 'finalReport'
    ];
}
