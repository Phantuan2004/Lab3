<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Testing\Fakes\Fake;
use Faker\Factory as Faker;

class BooksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        for ($i = 0; $i < 100; $i++) {
            DB::table('books')->insert([
                'title' => $faker->text(50), // Tên sách lấy 50 kí tự
                'thumbnail' => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLK8j6jOQTmI2jc57LMFhThvOCgQFKMobDYg&s', // Đường dẫn hình ảnh
                'author' => $faker->name, // $faker name để tạo tên tác giả
                'publisher' => $faker->company,   // faker company để tạo tên nhà sản xuất
                'publication' => $faker->dateTime(),    // dateTime để tạo ngày
                'price' => $faker->randomFloat(2, 5, 100),  // Tạo một giá trị thập phân ngẫu nhiên giữa 5 và 100 với 2 chữ số
                'quantity' => $faker->numberBetween(1, 100),    //Tạo số lượng ngẫu nhiên từ 1 -> 100
                'category_id' => rand(1, 5)     // Tạo category_id ngẫu nhiên từ 1->4
            ]);
        }
    }
}
