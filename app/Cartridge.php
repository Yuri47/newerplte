<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cartridge extends Model
{
    //
     protected $fillable = [
        'osCartridge_id', 'mark', 'number', 'serialNumber', 'price', 'state'
    ];
}
