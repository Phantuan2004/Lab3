<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */

    //* Phương thức up() dùng để thực hiện các thay đổi lên bảng
    public function up(): void
    {
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('title', 50);
            $table->string('thumbnail', 255);
            $table->string('author', 50);
            $table->string('publisher', 255);
            $table->dateTime('publication')->nullable();
            $table->double('price', 10, 2);
            $table->integer('quantity');
            //* Khởi tạo khóa ngoại với foreignId()
            //* Tạo ràng buộc khóa ngoại với constrained()
            $table->foreignId('category_id')->constrained();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */

    //* Phương thức down() dùng để xóa phương thức up() nếu bảng đã tồn tại
    public function down(): void
    {
        Schema::dropIfExists('books');
    }
};
