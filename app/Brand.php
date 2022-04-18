<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Brand extends Model
{
    use HasFactory;
    protected $guarded=[''];
    public function products()
    {
        return $this->belongsToMany('App\Product', 'brands_categories',);
    }

}
