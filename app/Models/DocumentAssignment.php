<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DocumentAssignment extends Model
{
    use HasFactory;

    protected $fillable = [
        'document_id',
        'commune_id',
        'industry_sector_id',
    ];

    public function document()
    {
        return $this->belongsTo(Document::class);
    }

    public function commune()
    {
        return $this->belongsTo(Commune::class);
    }

    public function industrySector()
    {
        return $this->belongsTo(IndustrySector::class);
    }
}
