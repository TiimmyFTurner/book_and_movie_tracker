import 'package:book_and_movie_tracker/database/dBProvider.dart';
import 'package:book_and_movie_tracker/model/book.dart';
import 'package:flutter/foundation.dart';

class BookProvider extends ChangeNotifier {
  Future<List<Book>> get books {
    return DBProvider.db.getAllBooks();
  }

  addBook(Book book) {
    DBProvider.db.addBook(book);
  }

  deleteBook(int id) {
    DBProvider.db.deleteBook(id);
  }
}
