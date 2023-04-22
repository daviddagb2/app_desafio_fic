<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use App\Models\Commune;

class CommuneSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Commune::create([
            'name' => 'Las Condes',
        ]);

        Commune::create([
            'name' => 'Puente Alto',
        ]);

        Commune::create([
            'name' => 'La Florida',
        ]);


    }
}
