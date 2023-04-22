<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use App\Models\IndustrySector;

class IndustrySectorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        
        IndustrySector::create([
            'name' => 'Pastelería',
            'description' => 'Panadería que se especializa en productos horneados dulces, pasteles y postres'
        ]);

        IndustrySector::create([
            'name' => 'Minimarket',
            'description' => 'Pequeña tienda de abarrotes que vende una variedad de alimentos y artículos del hogar'
        ]);

        IndustrySector::create([
            'name' => 'Electrónica',
            'description' => 'Tiendas que venden dispositivos y gadgets electrónicos, como computadoras, smartphones y televisores'
        ]);

    }

    
}
