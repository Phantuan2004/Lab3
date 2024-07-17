<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <form action="" method="post">
        <div class="form-group">
            <label for="">Tiêu đề sách</label>
            <input type="text" name="title" id="title">
        </div>
        <div class="form-group">
            <label for="">Ảnh mô tả</label>
            <input type="file" name="thumbnail" id="thumbnail">
        </div>
        <div class="form-group">
            <label for="">Tác giả</label>
            <input type="text" name="author" id="author">
        </div>
        <div class="form-group">
            <label for="">Nhà xuất bản</label>
            <input type="text" name="publisher" id="publisher">
        </div>
        <div class="form-group">
            <label for="">Ngày xuất bản</label>
            <input type="date" name="publication" id="publication">
        </div>
        <div class="form-group">
            <label for="">Giá sách</label>
            <input type="number" name="price" id="price">
        </div>
        <div class="form-group">
            <label for="">Số lượng</label>
            <input type="number" name="quantity" id="quantity">
        </div>
        <div class="form-group">
            <label for="">Danh mục sách</label>
            <select name="category_id" id="category_id">
                <!-- Hiển thị danh sách category -->
                @foreach ($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endforeach
            </select>
        </div>
        <button type="submit" name="submit" class="btn btn-primary">Thêm mới</button>
        <button class="btn btn-danger" type="reset">Nhập lại</button>
        <a href="" class="btn btn-warning">Danh sách</a>
        <!-- Chèn file upload -->
        <input type="hidden" name="MAX_FILE_SIZE" value="5000000">
        <input type="hidden" name="uploaded_file" id="uploaded_file">
        <script>
            $('#thumbnail').change(function() {
                var file = this.files[0];
                var reader = new FileReader();
                reader.onload = function(event) {
                    $('#uploaded_file').val(event.target.result);
                };
                reader.readAsDataURL(file);
            })
        </script>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>
