import 'package:book_and_movie_tracker/database/dBProvider.dart';
import 'package:book_and_movie_tracker/model/book.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:flutter/foundation.dart';

class StatisticsProvider extends ChangeNotifier {
  int _todayMovie = 0, _yesterdayMovie = 0, _todayMovieDiff = 0;
  int _thisMonthMovie = 0, _lastMonthMovie = 0, _thisMonthMovieDiff = 0;
  int _thisMonthBook = 0, _lastMonthBook = 0, _thisMonthBookDiff = 0;
  int _thisYearMovie = 0, _lastYearMovie = 0, _thisYearMovieDiff = 0;
  int _thisYearBook = 0, _lastYearBook = 0, _thisYearBookDiff = 0;

  void initStatistics() async {
    List<Book> _books = await DBProvider.db.getAllBooks();
    List<Movie> _movies = await DBProvider.db.getAllMovies();
    DateTime _today =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    DateTime _yesterday = _today.subtract(Duration(days: 1));
    DateTime _lastMonth = DateTime(_today.year, _today.month - 1);
    DateTime _lastYear = DateTime(_today.year - 1);

    _movies.forEach((element) {
      DateTime _elDate =
          DateTime(element.date.year, element.date.month, element.date.day);
      if (_elDate.year == _today.year) {
        if (_elDate.month == _today.month) {
          if (_elDate == _today)
            _todayMovie += element.watchTime;
          else if (_elDate == _yesterday) _yesterdayMovie += element.watchTime;
          _thisMonthMovie += element.watchTime;
        } else if (_elDate.month == _lastMonth.month)
          _lastMonthMovie += element.watchTime;
        _thisYearMovie += element.watchTime;
      } else if (_elDate.year == _lastYear.year)
        _lastYearMovie += element.watchTime;
    });
    _todayMovieDiff = _todayMovie - _yesterdayMovie;
    _thisMonthMovieDiff = _thisMonthMovie - _lastMonthMovie;
    _thisYearMovieDiff = _thisYearMovie - _lastYearMovie;
    _books.forEach((element) {
      DateTime _elDate =
          DateTime(element.date.year, element.date.month, element.date.day);
      if (_elDate.year == _today.year) {
        if (_elDate.month == _today.month) {
          _thisMonthBook += element.readTime;
        } else if (_elDate.month == _lastMonth.month)
          _lastMonthBook += element.readTime;
        _thisYearBook += element.readTime;
      } else if (_elDate.year == _lastYear.year)
        _lastYearBook += element.readTime;
    });
    _thisMonthBookDiff = _thisMonthBook - _lastMonthBook;
    _thisYearBookDiff = _thisYearBook - _lastYearBook;
    print('done');
    notifyListeners();
  }

  int get todayMovie => _todayMovie;
  int get yesterdayMovie => _yesterdayMovie;
  int get todayMovieDiff => _todayMovieDiff;
  int get thisMonthMovie => _thisMonthMovie;
  int get lastMonthMovie => _lastMonthMovie;
  int get thisMonthMovieDiff => _thisMonthMovieDiff;
  int get thisMonthBook => _thisMonthBook;
  int get lastMonthBook => _lastMonthBook;
  int get thisMonthBookDiff => _thisMonthBookDiff;
  int get thisYearMovie => _thisYearMovie;
  int get lastYearMovie => _lastYearMovie;
  int get thisYearMovieDiff => _thisYearMovieDiff;
  int get thisYearBook => _thisYearBook;
  int get lastYearBook => _lastYearBook;
  int get thisYearBookDiff => _thisYearBookDiff;
}
