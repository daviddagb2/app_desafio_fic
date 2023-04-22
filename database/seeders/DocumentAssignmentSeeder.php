<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use DB;
use App\Models\Commune;
use App\Models\Document;
use App\Models\IndustrySector;
use App\Models\DocumentAssignment;

class DocumentAssignmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Documents
        $doc_permiso_obra = Document::where('name', 'Permiso de obras')->first();
        $doc_permiso_operatividad = Document::where('name', 'Permiso de operatividad')->first();
        $doc_conformacion_sociedad = Document::where('name', 'Conformación de la sociedad')->first();
        $doc_permiso_manufactura_alimentos = Document::where('name', 'Permiso de manufactura de alimentos')->first();
        $doc_permiso_autorizacion_sanitaria = Document::where('name', 'Permiso de autorización Sanitaria')->first();
        $doc_permisos_importacion = Document::where('name', 'Permisos de importación')->first();
        $doc_patentes_legales_productos_venta = Document::where('name', 'Patentes legales de productos en venta')->first();
        $doc_permiso_manipulacion_alimentos = Document::where('name', 'Permiso de manipulación de alimentos')->first();
        $doc_cedula_identidad = Document::where('name', 'Cédula de identidad')->first();
        $doc_patente_manufactura_de_proveedores = Document::where('name', 'Patente de manufactura de proveedores')->first();
        $doc_copia_de_traslado_inicial_mercaderias = Document::where('name', 'Copia de traslado inicial de mercaderías')->first();
        $doc_manual_buenas_practicas = Document::where('name', 'Manual de buenas prácticas para la comercialización de productos')->first();

        // Communes
        $com_las_condes = Commune::where('name', 'Las Condes')->first();
        $com_puente_alto = Commune::where('name', 'Puente Alto')->first();
        $com_la_florida = Commune::where('name', 'La Florida')->first();

        // Industry Sectors
        $ind_pasteleria = IndustrySector::where('name', 'Pastelería')->first();
        $ind_minimarket = IndustrySector::where('name', 'Minimarket')->first();
        $ind_electronica = IndustrySector::where('name', 'Electrónica')->first();

        // Document Assignments
        //Las Condes
        //Minimarket
        DocumentAssignment::create([
            'document_id' => $doc_permiso_obra->id,
            'commune_id' => $com_las_condes->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);
        
        DocumentAssignment::create([
            'document_id' => $doc_permiso_operatividad->id,
            'commune_id' => $com_las_condes->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);
      
        DocumentAssignment::create([
            'document_id' => $doc_conformacion_sociedad->id,
            'commune_id' => $com_las_condes->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);

        //Pasteleria
        DocumentAssignment::create([
            'document_id' => $doc_permiso_manufactura_alimentos->id,
            'commune_id' => $com_las_condes->id,
            'industry_sector_id' => $ind_pasteleria->id,
        ]);

        DocumentAssignment::create([
            'document_id' => $doc_permiso_autorizacion_sanitaria->id,
            'commune_id' => $com_las_condes->id,
            'industry_sector_id' => $ind_pasteleria->id,
        ]);

        //Electronica
        DocumentAssignment::create([
            'document_id' => $doc_permisos_importacion->id,
            'commune_id' => $com_las_condes->id,
            'industry_sector_id' => $ind_electronica->id,
        ]);
        
        DocumentAssignment::create([
            'document_id' => $doc_patentes_legales_productos_venta->id,
            'commune_id' => $com_las_condes->id,
            'industry_sector_id' => $ind_electronica->id,
        ]);

        //Puente Alto
        //Minimarket
        DocumentAssignment::create([
            'document_id' => $doc_permiso_obra->id,
            'commune_id' => $com_puente_alto->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);
       
        DocumentAssignment::create([
            'document_id' => $doc_permiso_manipulacion_alimentos->id,
            'commune_id' => $com_puente_alto->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);
        
        DocumentAssignment::create([
            'document_id' => $doc_conformacion_sociedad->id,
            'commune_id' => $com_puente_alto->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);

        //Pasteleria
        DocumentAssignment::create([
            'document_id' => $doc_permiso_manufactura_alimentos->id,
            'commune_id' => $com_puente_alto->id,
            'industry_sector_id' => $ind_pasteleria->id,
        ]);
       
        DocumentAssignment::create([
            'document_id' => $doc_permiso_autorizacion_sanitaria->id,
            'commune_id' => $com_puente_alto->id,
            'industry_sector_id' => $ind_pasteleria->id,
        ]);
      
        DocumentAssignment::create([
            'document_id' => $doc_cedula_identidad->id,
            'commune_id' => $com_puente_alto->id,
            'industry_sector_id' => $ind_pasteleria->id,
        ]);

        //Electronica
        DocumentAssignment::create([
            'document_id' => $doc_permisos_importacion->id,
            'commune_id' => $com_puente_alto->id,
            'industry_sector_id' => $ind_electronica->id,
        ]);
      
        DocumentAssignment::create([
            'document_id' => $doc_patente_manufactura_de_proveedores->id,
            'commune_id' => $com_puente_alto->id,
            'industry_sector_id' => $ind_electronica->id,
        ]);

        //La Florida
        //Minimarket
        DocumentAssignment::create([
            'document_id' => $doc_cedula_identidad->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);
      
        DocumentAssignment::create([
            'document_id' => $doc_copia_de_traslado_inicial_mercaderias->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);
      
        DocumentAssignment::create([
            'document_id' => $doc_manual_buenas_practicas->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_minimarket->id,
        ]);

        //Pasteleria
        DocumentAssignment::create([
            'document_id' => $doc_permiso_manufactura_alimentos->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_pasteleria->id,
        ]);
       
        DocumentAssignment::create([
            'document_id' => $doc_permiso_autorizacion_sanitaria->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_pasteleria->id,
        ]);
       
        DocumentAssignment::create([
            'document_id' => $doc_cedula_identidad->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_pasteleria->id,
        ]);

        //Electronica
        DocumentAssignment::create([
            'document_id' => $doc_permisos_importacion->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_electronica->id,
        ]);
       
        DocumentAssignment::create([
            'document_id' => $doc_patente_manufactura_de_proveedores->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_electronica->id,
        ]);
       
        DocumentAssignment::create([
            'document_id' => $doc_cedula_identidad->id,
            'commune_id' => $com_la_florida->id,
            'industry_sector_id' => $ind_electronica->id,
        ]);

    }
}
