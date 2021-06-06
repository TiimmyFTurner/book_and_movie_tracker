import 'package:book_and_movie_tracker/database/dBProvider.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:flutter/foundation.dart';

class MovieProvider extends ChangeNotifier {
  Future<List<Movie>> _movie;

  Future<List<Movie>> get movies {
    _movie = DBProvider.db.getAllMovies();
    return _movie;
  }

  addMovie(Movie movie) {
    DBProvider.db.addmovie(movie);
    _movie = DBProvider.db.getAllMovies();
    notifyListeners();
  }

  deleteMovie(int id) {
    DBProvider.db.deleteMovie(id);
    _movie = DBProvider.db.getAllMovies();
    notifyListeners();
  }
}
