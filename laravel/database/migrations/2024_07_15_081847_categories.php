<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->string('name', 50);
        });
    }

    /**
     * Reverse the migrations.
     */

    // Xóa bảng ở phương thức up() khi nó đã tồn tại trên database bằng phương thức down()
    public function down(): void
    {
        Schema::dropIfExists('categories');
    }
};
