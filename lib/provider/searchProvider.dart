import 'package:book_and_movie_tracker/database/dBProvider.dart';
import 'package:book_and_movie_tracker/model/book.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:flutter/foundation.dart';

class SearchProvider extends ChangeNotifier {
  Future<List<Book>> serachBook(String title) {
    return DBProvider.db.searchBook(title);
  }

  Future<List<Movie>> serachMovie(String title) {
    return DBProvider.db.searchMovie(title);
  }
}
