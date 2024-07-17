<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    //* Tạo các bản ghi cho bảng categories với phương thức run()
    public function run(): void
    {
        DB::table('categories')->insert([
            ['name' => 'Văn học'],
            ['name' => 'Kinh tế'],
            ['name' => 'Thiết kế'],
            ['name' => 'Thể thao'],
            ['name' => 'Thư viện'],
            ['name' => 'Sức khoẻ']
        ]);
    }
}
