<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Commune extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    public function entrepreneurs()
    {
        return $this->hasMany(Entrepreneur::class);
    }

    public function documentAssignments()
    {
        return $this->hasMany(DocumentAssignment::class);
    }

}
