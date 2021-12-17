<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Refundrequest extends Model
{
    protected $table='refundrequest';
    protected $primaryKey='r_id';
    use HasFactory;
}
