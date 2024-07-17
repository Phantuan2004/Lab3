{{-- extends: chỉ định layout được sử dụng --}}
@extends('layout.admin')

{{-- section: định nghĩa nội dung của section --}}
@section('content')
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">Chi tiết sản phẩm</div>
            <div class="card-body d-flex justify-content-around">
                <div class="img">
                    <img src="{{ $detail->thumbnail }}" alt="{{ $detail->title }}">
                </div>
                <div class="content">
                    <h2>Tên sách: {{ $detail->title }}</h2>
                    <p>Mã loại: {{ $detail->category_id }}</p>
                    <p>Tác giả: {{ $detail->author }}</p>
                    <p>Nhà xuất bản: {{ $detail->publisher }}</p>
                    <p>Ngày xuất bản: {{ $detail->publication }}</p>
                    <p>Giá bán: {{ $detail->price }}</p>
                </div>
            </div>
        </div>
    </div>
@endsection
