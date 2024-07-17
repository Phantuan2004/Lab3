<style>
    a,
    button {
        width: 5rem;
        height: 3rem;
    }
</style>

{{-- extends: chỉ định layout được sử dụng --}}
@extends('layout.admin')

{{-- section: định nghĩa nội dung của section --}}
@section('content')
    <div class="container mt-5">
        <h1 class="text-center mb-5">Danh sách các sản phẩm</h1>
        <div class="">
            <a class="btn btn-success" style="width: 100px; height: 41px;" href="{{ route('books.create') }}">Thêm
                mới</a>
        </div>
        <table border="1" class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Mã sách</th>
                    <th scope="col">Tiêu đề sách</th>
                    <th scope="col">Ảnh mô tả</th>
                    <th scope="col">Tác giả</th>
                    <th scope="col">Nhà xuất bản</th>
                    <th scope="col">Ngày xuất bản</th>
                    <th scope="col">Giá bán</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Loại sách</th>
                    <th scope="col">Thao tác</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($listBooks as $book)
                    <tr>
                        <td>{{ $book->id }}</td>
                        <td>{{ $book->title }}</td>
                        <td>
                            <img src="{{ $book->thumbnail }}" alt="{{ $book->title }}" class="img-fluid"
                                style="width:100px">
                        </td>
                        <td>{{ $book->author }}</td>
                        <td>{{ $book->publisher }}</td>
                        <td>{{ $book->publication }}</td>
                        <td>{{ $book->price }}</td>
                        <td>{{ $book->quantity }}</td>
                        <td>{{ $book->name }}</td>
                        <td class="d-flex justify-content-center align-content-center">
                            <a href="{{ '/detail/' . $book->id }}" class="btn btn-success">Chi tiết</a>
                            <a href="{{ route('books.edit', $book->id) }}" class="btn btn-dark">Sửa</a>
                            {{-- Chức năng xóa cần sử dụng form --}}
                            <form action="{{ route('books.destroy', $book->id) }}" method="POST">
                                {{-- Sử dụng @csrf trong các form gửi dữ liệu để tránh tấn công bảo mật --}}
                                @csrf
                                {{-- Sử dụng phương thức POST để giả lập các phương thức như PUT PATCH và DELETE --}}
                                @method('DELETE')
                                <button type="submit" onclick="return confirm('Bạn có chắc muốn xóa')"
                                    class="btn btn-danger">Xóa</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
