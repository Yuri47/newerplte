<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CollectEquip extends Model
{
    //
    protected $fillable = [
       'id', 'name', 'doc', 'os_id'
    ];
}
