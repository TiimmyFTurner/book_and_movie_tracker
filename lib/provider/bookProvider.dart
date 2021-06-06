import 'package:book_and_movie_tracker/database/dBProvider.dart';
import 'package:book_and_movie_tracker/model/book.dart';
import 'package:flutter/foundation.dart';

class BookProvider extends ChangeNotifier {
  Future<List<Book>> _books;

  Future<List<Book>> get books  {
    _books =  DBProvider.db.getAllBooks();
    return _books;
  }

  addBook(Book book) {
    DBProvider.db.addBook(book);
    _books = DBProvider.db.getAllBooks();
    notifyListeners();
  }

  deleteBook(int id) {
    DBProvider.db.deleteBook(id);
    _books = DBProvider.db.getAllBooks();
    notifyListeners();
  }
}
