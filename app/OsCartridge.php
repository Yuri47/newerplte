<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OsCartridge extends Model
{
    //
     protected $fillable = [
        'client_id', 'state', 'pay', 'price', 'name', 'cash_id'
    ];
     //protected $dateFormat = 'd-m-Y H:i:s';
}
