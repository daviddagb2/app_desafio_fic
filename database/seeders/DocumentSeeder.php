<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use App\Models\Document;

class DocumentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        
        Document::create([
            'name' => 'Permiso de obras',
            'description'  => 'Permiso de obras',
            'enabled' => true,
        ]);

        Document::create([
            'name' => 'Permiso de operatividad',
            'description'  => 'Permiso de operatividad',
            'enabled' => true,
        ]);

        Document::create([
            'name' => 'Conformación de la sociedad',
            'description'  => 'Documento de Conformación de la sociedad',
            'enabled' => true,
        ]);

        Document::create([
            'name' => 'Permiso de manufactura de alimentos',
            'description'  => 'Documento de Permiso de manufactura de alimentos',
            'enabled' => true,
        ]);

        Document::create([
            'name' => 'Permiso de autorización Sanitaria',
            'description'  => 'Documento de Permiso de autorización Sanitaria',
            'enabled' => true,
        ]);

        Document::create([
            'name' => 'Permisos de importación',
            'description'  => 'Documento de Permisos de importación',
            'enabled' => true,
        ]);

        Document::create([
            'name' => 'Patentes legales de productos en venta',
            'description'  => 'Documento de Patentes legales de productos en venta',
            'enabled' => true,
        ]);

        Document::create([
            'name' => 'Permiso de manipulación de alimentos',
            'description'  => 'Documento de Permiso de manipulación de alimentos',
            'enabled' => true,
        ]);
        
        Document::create([
            'name' => 'Cédula de identidad',
            'description'  => 'Documento Cédula de identidad',
            'enabled' => true,
        ]);
        
        Document::create([
            'name' => 'Patente de manufactura de proveedores',
            'description'  => 'Documento de Patente de manufactura de proveedores',
            'enabled' => true,
        ]);
        
        Document::create([
            'name' => 'Copia de traslado inicial de mercaderías',
            'description'  => 'Documento Copia de traslado inicial de mercaderías',
            'enabled' => true,
        ]);
        
        Document::create([
            'name' => 'Manual de buenas prácticas para la comercialización de productos',
            'description'  => 'Documento manual de buenas prácticas para la comercialización de productos',
            'enabled' => true,
        ]);


    }
}
