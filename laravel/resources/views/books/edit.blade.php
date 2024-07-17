{{-- extends: chỉ định layout được sử dụng --}}
@extends('layout.admin')

{{-- section: định nghĩa nội dung của section --}}
@section('content')
    <div class="container mt-5 mb-5">
        <div class="card">
            <h1 class="card-header">Cập nhật sách</h1>
            <div class="card-body">
                <form action="{{ route('books.edit', $editBooks->id) }}" method="post" enctype="multipart/form-data">
                    {{-- Cơ chế bảo mật của laravel --}}
                    @csrf
                    {{-- Sử dungj phương thức POST để giả lập PUT --}}
                    @method('PUT')
                    <input type="hidden" name="id" value="{{ $editBooks->id }}">
                    <div class="form-group">
                        <label class="" for="">Tiêu đề sách</label>
                        <input class="form-control" type="text" name="title" id="title"
                            value="{{ $editBooks->title }}">
                    </div>
                    <div>
                        <div class="form-group">
                            <label for="">Ảnh mô tả</label> <br>
                            <input type="file" name="thumbnail_file" id="thumbnail_file">
                        </div>
                        <p style="font-weight: 700">Hoặc bạn có thể chọn</p>
                        <div class="form-group">
                            <label for="">URL ảnh mô tả</label> <br>
                            <input class="form-control" type="text" name="thumbnail_url" id="thumbnail_url"
                                value="{{ $editBooks->thumbnail }}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="">Tác giả</label>
                        <input class="form-control" type="text" name="author" id="author"
                            value="{{ $editBooks->author }}">
                    </div>
                    <div class="form-group">
                        <label for="">Nhà xuất bản</label>
                        <input class="form-control" type="text" name="publisher" id="publisher"
                            value="{{ $editBooks->publisher }}">
                    </div>
                    <div class="form-group">
                        <label for="">Ngày xuất bản</label>
                        <input class="form-control" type="date" name="publication" id="publication"
                            value="{{ \Carbon\Carbon::parse($editBooks->publication)->format('Y-m-d') }}">{{-- Sử dụng thư viện Carbon để định dạng ngày tháng --}}

                    </div>
                    <div class="form-group">
                        <label for="">Giá sách</label>
                        <input min="1" class="form-control" type="text" name="price" id="price"
                            value="{{ $editBooks->price }}">
                    </div>
                    <div class="form-group">
                        <label for="">Số lượng</label>
                        <input min="1" class="form-control" type="number" name="quantity" id="quantity"
                            value="{{ $editBooks->quantity }}">
                    </div>
                    <div class="form-group">
                        <label for="">Danh mục sách</label>
                        <select class="form-control" name="category_id" id="category_id">
                            <!-- Hiển thị danh sách category -->
                            @foreach ($categories as $category)
                                <option value="{{ $category->id }}" @if ($category->id === $editBooks->id) selected @endif>
                                    {{ $category->name }}
                                </option>
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Cập nhật</button>
                    <button class="btn btn-danger" type="reset">Nhập lại</button>
                    <a href="/" class="btn btn-warning">Danh sách</a>
            </div>
        </div>
        </form>
    </div>
@endsection
