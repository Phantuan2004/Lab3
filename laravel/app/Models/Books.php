<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Books extends Model
{
    public function getAll()
    {
        $books = DB::table('books')
            ->join('categories', 'books.category_id', '=', 'categories.id')
            // sử dụng phương thức select để truy vấn tới tất cả bản ghi
            //books.* tương đương với lấy tất cả các bản ghi của bảng books
            //chọn cột name từ bảng categories và gán nó cho tên mới là categoy_name
            //Note: Việc sử dụng gán tên có thể giúp tránh bị xung đột khi các bảng có tên trường giống nhau
            ->select('books.*', 'categories.name as category_name')
            ->orderBy('books.id')
            ->get();
        return $books;
    }
    use HasFactory;

    public function createBooks($data)
    {
        DB::table('books')->insert(
            [
                'title' => $data['title'],
                'thumbnail' => $data['thumbnail'],
                'author' => $data['author'],
                'publisher' => $data['publisher'],
                'publication' => $data['publication'],
                'price' => $data['price'],
                'quantity' => $data['quantity'],
                'category_id' => $data['category_id']
            ]
        );
        DB::table('books')->insert($data);
    }

    public function updateBooks($data, $id)
    {
        DB::table('books')->wheres('id', $id)->update($data);
    }
}
