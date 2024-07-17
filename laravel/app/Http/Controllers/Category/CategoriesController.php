<?php

namespace App\Http\Controllers\Category;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class CategoriesController extends Controller
{

    /**
     * Hiển thị danh sách tài nguyên.
     */

    //* Định nghĩa phương thức index() để xử lí khi truy cập route
    public function index()
    {
        //* Lấy tất cả các bản ghi từ bảng categories trên database truyền vào biến $categories
        $categories = DB::table('categories')->get();
        //* Trả về view và truyền categories vào view
        return view('category.list', compact('categories')); //* Tạo mảng với khóa là tên biến: categories, nó sẽ có giá trị tương đương biến $categories -> truyền vào view
    }

    /**
     * Hiển thị biểu mẫu để tạo một tài nguyên mới.
     */
    public function create()
    {
        //* Lấy bản ghi từ bảng books trên database truyền vào biến
        $books = DB::table('books')->get();
        return view('category.create', compact('categories'));
    }

    /**
     * Lưu trữ tài nguyên mới được tạo trong bộ nhớ.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Hiển thị tài nguyên được chỉ định.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Hiển thị biểu mẫu để chỉnh sửa tài nguyên được chỉ định.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Cập nhật tài nguyên được chỉ định trong lưu trữ.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Xóa tài nguyên được chỉ định khỏi lưu trữ.
     */
    public function destroy(string $id)
    {
        //
    }
}
