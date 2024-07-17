{{-- extends: chỉ định layout được sử dụng --}}
@extends('layout.admin')

{{-- section: định nghĩa nội dung của section --}}
@section('content')
    <div class="container mt-5 mb-5">
        <div class="card">
            <h1 class="card-header">Thêm sách mới</h1>
            <div class="card-body">
                <form action="{{ route('books.store') }}" method="post" enctype="multipart/form-data">
                    {{-- Cơ chế bảo mật của laravel --}}
                    @csrf
                    <div class="form-group">
                        <label class="" for="">Tiêu đề sách</label>
                        <input class="form-control" type="text" name="title" id="title">
                    </div>
                    <div>
                        <div class="form-group">
                            <label for="">Ảnh mô tả</label> <br>
                            <input type="file" name="thumbnail_file" id="thumbnail_file">
                        </div>
                        <p style="font-weight: 700">Hoặc bạn có thể chọn</p>
                        <div class="form-group">
                            <label for="">URL ảnh mô tả</label> <br>
                            <input class="form-control" type="text" name="thumbnail_url" id="thumbnail_url">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Tác giả</label>
                        <input class="form-control" type="text" name="author" id="author">
                    </div>
                    <div class="form-group">
                        <label for="">Nhà xuất bản</label>
                        <input class="form-control" type="text" name="publisher" id="publisher">
                    </div>
                    <div class="form-group">
                        <label for="">Ngày xuất bản</label>
                        <input class="form-control" type="date" name="publication" id="publication">
                    </div>
                    <div class="form-group">
                        <label for="">Giá sách</label>
                        <input class="form-control" step="0.1" type="number" name="price" id="price">
                    </div>
                    <div class="form-group">
                        <label for="">Số lượng</label>
                        <input class="form-control" type="number" name="quantity" id="quantity">
                    </div>
                    <div class="form-group">
                        <label for="">Danh mục sách</label>
                        <select class="form-control" name="category_id" id="category_id">
                            <!-- Hiển thị danh sách category -->
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Thêm mới</button>
                    <button class="btn btn-danger" type="reset">Nhập lại</button>
                    <a href="/" class="btn btn-warning">Danh sách</a>
            </div>
        </div>
        </form>
    </div>
@endsection
