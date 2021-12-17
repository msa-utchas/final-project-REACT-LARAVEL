<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Moderator extends Model
{
    protected $table = 'moderator';
    protected $primaryKey='m_id';
    public $timestamps=false;
    use HasFactory;
}
