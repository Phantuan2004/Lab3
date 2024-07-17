<?php

namespace App\Http\Controllers\Books;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Models\Books;

class BooksController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function list()
    {
        $listBooks = DB::table('books')
            ->join('categories', 'books.category_id', '=', 'categories.id')
            // sử dụng phương thức select để truy vấn tới tất cả bản ghi
            //books.* tương đương với lấy tất cả các bản ghi của bảng books
            //chọn cột name từ bảng categories và gán nó cho tên mới là categoy_name
            //Note: Việc sử dụng gán tên có thể giúp tránh bị xung đột khi các bảng có tên trường giống nhau
            ->select('books.*', 'name')
            ->orderBy('id')
            ->get();
        return view('books.list', compact('listBooks'));
    }

    // Detail table Books
    public function detail($id)
    {
        $detail = DB::table('books')->where('id', $id)->first();
        return view('books.detail', compact('detail'));
    }

    /**
     * Hiển thị biểu mẫu để tạo một tài nguyên mới.
     */
    public function create()
    {
        // Lấy bản ghi từ bảng categories trên database truyền vào biến $categories
        $categories = DB::table('categories')->get();
        // Trả về view và truyền categories vào view
        return view('books.create', compact('categories'));
    }

    /**
     * Lưu trữ một tài nguyên mới được tạo trong lưu trữ.
     */
    public function store(Request $request)
    {
        // Kiểm tra và xử lý file upload nếu có
        if ($request->hasFile('thumbnail_file')) {
            // Lưu file vào thư mục public/uploads/books
            $filename = $request->file('thumbnail_file')->store('uploads/books', 'public');

            $thumbnailPath = Storage::url($filename);
        }   // Nếu không có file upload, kiểm tra url ảnh
        else if ($request->input('thumbnail_url')) {
            // Kiểm tra và lưu url ảnh vào thư mục public/uploads/books
            $thumbnailPath = $request->input('thumbnail_url');
        } else {
            // Nếu không có file hoặc url, đặt là null
            $thumbnailPath = null;
        }
        $data = [
            'title' => $request['title'],
            'thumbnail' => $thumbnailPath,
            'author' => $request['author'],
            'publisher' => $request['publisher'],
            'publication' => $request['publication'],
            'price' => $request['price'],
            'quantity' => $request['quantity'],
            'category_id' => $request['category_id']
        ];
        // Thêm dữ liệu vào bảng books
        DB::table('books')->insert($data);
        // Trả về trang danh sách sách
        return redirect()->route('books')->with('success', 'Thêm sách thành công!!!');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $editBooks = DB::table('books')->where('id', $id)->first();
        $categories = DB::table('categories')->get();
        if (!$editBooks) {
            return redirect()->route('index');
        }
        //Truyền editBooks và categories vào view và truyền nó ra
        return view('books.edit', compact('editBooks', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        if ($request->hasFile('thumbnail_file')) {
            // Lưu file vào thư mục public/uploads/books
            $filename = $request->file('thumbnail_file')->store('uploads/books', 'public');

            $thumbnailPath = Storage::url($filename);
        }   // Nếu không có file upload, kiểm tra url ảnh
        else if ($request->input('thumbnail_url')) {
            // Kiểm tra và lưu url ảnh vào thư mục public/uploads/books
            $thumbnailPath = $request->input('thumbnail_url');
        } else {
            // Nếu không có file hoặc url, đặt là null
            $thumbnailPath = null;
        }
        $dataUpdate = [
            'title' => $request['title'],
            'thumbnail' => $thumbnailPath,
            'author' => $request['author'],
            'publisher' => $request['publisher'],
            'publication' => $request['publication'],
            'price' => $request['price'],
            'quantity' => $request['quantity'],
            'category_id' => $request['category_id']
        ];

        DB::table('books')->where('id', $request['id'])->update($dataUpdate);
        return redirect()->route('books');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        DB::table('books')->delete($id);
        return redirect()->route('books');
    }
}
