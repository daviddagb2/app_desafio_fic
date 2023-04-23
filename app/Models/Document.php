<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'enabled'
    ];

    public function documentAssignments()
    {
        return $this->hasMany(DocumentAssignment::class);
    }

    public function entrepreneurs()
    {
        return $this->belongsToMany(Entrepreneur::class, 'document_assignments');
    }

    public function communes()
    {
        return $this->belongsToMany(Commune::class, 'document_assignments');
    }

    public function industrySectors()
    {
        return $this->belongsToMany(IndustrySector::class, 'document_assignments');
    }

}
