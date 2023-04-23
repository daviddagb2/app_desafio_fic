<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Entrepreneur extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'phone',
        'address',
        'user_id',
        'commune_id',
        'industry_sector_id'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function commune()
    {
        return $this->belongsTo(Commune::class);
    }

    public function industrySector()
    {
        return $this->belongsTo(IndustrySector::class);
    }

    public function documents()
    {
        return $this->belongsToMany(Document::class, 'document_assignments');
    }

    public function documentAssignments()
    {
        return $this->hasMany(DocumentAssignment::class);
    }

}
