<?php

use App\Http\Controllers\Books\BooksController;
use App\Http\Controllers\Category\CategoriesController;
use Illuminate\Support\Facades\Route;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


//*TODO: books route
//*View table database Books
Route::get('/', [BooksController::class, 'list'])->name('books');

//*Detail book
Route::get('/detail/{id}', [BooksController::class, 'detail'])->name('books.detail');

//*Create Book
//Add Book
Route::get('/create', [BooksController::class, 'create'])->name('books.create');
//Save Book
Route::post('/create', [BooksController::class, 'store'])->name('books.store');

//*Edit Book
//Edit Book
Route::get('/edit/{id}', [BooksController::class, 'edit'])->name('books.edit');
//Update Book
Route::put('/edit/{id}', [BooksController::class, 'update'])->name('books.edit');

//*Delete Book
Route::delete('/delete/{id}', [BooksController::class, 'destroy'])->name('books.destroy');


//*TODO: categories route
// View
Route::get('/category/list', [CategoriesController::class, 'index'])->name('categories.list');

// Create