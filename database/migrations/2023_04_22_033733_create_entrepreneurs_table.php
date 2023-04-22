<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('entrepreneurs', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('phone', 22)->nullable();
            $table->string('address')->nullable();
           
            $table->foreignId('user_id')->constrained('users');
            $table->foreignId('commune_id')->constrained('communes');
            $table->foreignId('industry_sector_id')->constrained('industry_sectors');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('entrepreneurs');
    }
};
