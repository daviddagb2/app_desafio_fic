<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(RoleSeeder::class);
        $this->call(UsersSeeder::class);
        $this->call(CommuneSeeder::class);
        $this->call(IndustrySectorSeeder::class);
        $this->call(DocumentSeeder::class);
    }
}
