<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EntrepreneurDocument extends Model
{
    use HasFactory;

    protected $fillable = [
        'entrepreneur_id',
        'document_id',
        'presented'
    ];

}
