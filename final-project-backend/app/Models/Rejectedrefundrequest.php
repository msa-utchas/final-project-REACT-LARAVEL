<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rejectedrefundrequest extends Model
{
    protected $table = 'rejectedrefundrequest';
    public $timestamps = false;
    use HasFactory;
}
