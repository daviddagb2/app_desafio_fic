<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IndustrySector extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description'
    ];
}
