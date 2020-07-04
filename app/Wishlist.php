<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Wishlist extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'product_id',
    ];

    public function product()
    {
        return $this->belongsTo('App\Product');
    }
}
