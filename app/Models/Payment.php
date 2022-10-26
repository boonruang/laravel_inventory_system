<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Customer;
use App\Models\Invoice;

class Payment extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function customer() {
        return $this->belongsTo(Customer::class,'customer_id','id');
    } // End Method

    public function invoice() {
        return $this->belongsTo(Invoice::class,'invoice_id','id');
    } // End Method

}
