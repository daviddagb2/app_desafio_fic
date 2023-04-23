<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EntrepreneurDocument extends Model
{
    use HasFactory;

    protected $fillable = [
        'entrepreneur_id',
        'document_assignment_id',
        'presented'
    ];

    public function entrepreneur()
    {
        return $this->belongsTo(Entrepreneur::class);
    }

    public function documentAssignment()
    {
        return $this->belongsTo(DocumentAssignment::class);
    }


}
