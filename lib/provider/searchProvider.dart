import 'package:book_and_movie_tracker/database/dBProvider.dart';
import 'package:book_and_movie_tracker/model/book.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:flutter/foundation.dart';

class SearchProvider extends ChangeNotifier {
  List _searchItems = [];

  List get searchItems => _searchItems;

  void search(String search) {
    _searchItems = [];
    searchBook(search).then((value) {
      if (value != null || value != []) _searchItems += value;
      searchMovie(search).then((value) {
        if (value != null || value != []) _searchItems += value;
        _searchItems.shuffle();
        notifyListeners();
      });
    });
  }

  Future<List<Book>> searchBook(String title) {
    return DBProvider.db.searchBook(title);
  }

  Future<List<Movie>> searchMovie(String title) {
    return DBProvider.db.searchMovie(title);
  }
}
