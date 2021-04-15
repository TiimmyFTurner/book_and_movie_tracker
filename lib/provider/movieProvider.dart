import 'package:book_and_movie_tracker/database/dBProvider.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:flutter/foundation.dart';

class MovieProvider extends ChangeNotifier {
  Future<List<Movie>> get movies {
    return DBProvider.db.getAllMovies();
  }

  addMovie(Movie movie) {
    DBProvider.db.addmovie(movie);
  }
}
