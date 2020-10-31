<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
      protected $fillable = ['department', 'categoty', 'gender', 'size', 'product_price', 'status'];

      //

        protected $hidden = [
        'created_at', 'updated_at',
    ];

}
