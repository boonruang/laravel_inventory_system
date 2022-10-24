<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Supplier;
use App\Models\Product;
use App\Models\Category;
use App\Models\Unit;

class Purchase extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function product() {
        return $this->belongsTo(Product::class,'product_id','id');
    } // End Method

    public function supplier() {
        return $this->belongsTo(Supplier::class,'supplier_id','id');
    } // End Method

    public function unit() {
        return $this->belongsTo(Unit::class,'unit_id','id');
    } // End Method    

    public function category() {
        return $this->belongsTo(Category::class,'category_id','id');
    } // End Method

}
