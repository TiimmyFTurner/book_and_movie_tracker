import 'dart:io';

import 'package:book_and_movie_tracker/model/book.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDatabase();
    return _database;
  }

  final Map<String, String> bookTable = {
    'dbName': 'book',
    'id': 'id',
    'title': 'title',
    'writer': 'writer',
    'pages': 'pages',
    'read_time': 'read_time',
    'rate': 'rate',
    'date': 'date',
    'note': 'note',
    'image_path': 'image_path'
  };
  final Map<String, String> movieTable = {
    'dbName': 'movie',
    'id': 'id',
    'title': 'title',
    'creator': 'creator',
    'fav_actor': 'fav_actor',
    'time': 'time',
    'watch_time': 'watch_time',
    'rate': 'rate',
    'date': 'date',
    'note': 'note',
    'image_path': 'image_path'
  };
  Future<void> createBookTable(Database db) async {
    final bookSql = '''CREATE TABLE ${bookTable['dbName']} 
    (
      ${bookTable['id']} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${bookTable['title']} TEXT,
      ${bookTable['writer']} TEXT,
      ${bookTable['pages']} INTEGER,
      ${bookTable['read_time']} INTEGER,
      ${bookTable['rate']} INTEGER,
      ${bookTable['date']} TEXT,
      ${bookTable['note']} TEXT,
      ${bookTable['image_path']} TEXT
    )''';
    await db.execute(bookSql);
  }

  Future<void> createMovieTable(Database db) async {
    final movieSql = '''CREATE TABLE ${movieTable['dbName']} 
    (
      ${movieTable['id']} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${movieTable['title']} TEXT,
      ${movieTable['creator']} TEXT,
      ${movieTable['fav_actor']} TEXT,
      ${movieTable['time']} INTEGER,
      ${movieTable['watch_time']} INTEGER,
      ${movieTable['rate']} INTEGER,
      ${movieTable['date']} TEXT,
      ${movieTable['note']} TEXT,
      ${movieTable['image_path']} TEXT
    )''';
    await db.execute(movieSql);
  }

  Future<String> getDatabasePath(String dbName) async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, dbName);
    if (!await Directory(dirname(path)).exists())
      await Directory(dirname(path)).create(recursive: true);
    return path;
  }

  Future initDatabase() async {
    final path = await getDatabasePath('bamt.db');
    return await openDatabase(path, version: 1, onCreate: onCreate);
  }

  Future<void> onCreate(Database db, int version) async {
    await createBookTable(db);
    await createMovieTable(db);
  }

  ///--------------------------------------------------------------------------------
  ///--------------------------------------------------------------------------------
  ///--------------------------------------------------------------------------------
  Future<List<Book>> getAllBooks() async {
    final db = await database;
    final sql = '''SELECT * FROM book''';
    final data = await db.rawQuery(sql);
    List<Book> books = [];
    for (final item in data) books.add(Book.fromJson(item));
    return books;
  }

  Future<List<Movie>> getAllMovies() async {
    final db = await database;

    final sql = '''SELECT * FROM movie''';
    final data = await db.rawQuery(sql);
    List<Movie> movies = [];
    for (final item in data) movies.add(Movie.fromJson(item));
    return movies;
  }

  Future<void> addBook(Book book) async {
    final db = await database;
    final sql = '''INSERT INTO book 
    (
      title,
      writer,
      pages,
      read_time,
      rate,
      date,
      note,
      image_path
    )
    VALUES
    (
      "${book.title}",
      "${book.writer}",
      ${book.pages},
      ${book.readTime},
      ${book.rate},
      "${book.date.toString()}",
      "${book.note}",
      "${book.imagePath}"
    )''';
    db.rawInsert(sql);
  }

  Future<void> addmovie(Movie movie) async {
    final db = await database;
    final sql = '''INSERT INTO movie 
    (
      title,
      creator,
      fav_actor,
      time,
      watch_time,
      rate,
      date,
      note,
      image_path
    )
    VALUES
    (
      "${movie.title}",
      "${movie.creator}",
      "${movie.favActor}",
      ${movie.time},
      ${movie.watchTime},
      ${movie.rate},
      "${movie.date.toString()}",
      "${movie.note}",
      "${movie.imagePath}"
    )''';
    await db.rawInsert(sql);
  }

  Future<void> deleteBook(int id) async {
    final db = await database;
    final sql = '''DELETE FROM book 
      WHERE id = $id''';
    await db.rawDelete(sql);
  }

  Future<void> deleteMovie(int id) async {
    final db = await database;
    final sql = '''DELETE FROM movie 
      WHERE id = $id''';
    await db.rawDelete(sql);
  }

  Future<List<Book>> searchBook(String title) async {
    Database db = await database;
    final data =
        await db.rawQuery("SELECT * FROM book WHERE title LIKE '%$title%'");
    List<Book> books = [];
    for (final item in data) books.add(Book.fromJson(item));
    return books;
  }

  Future<List<Movie>> searchMovie(String title) async {
    Database db = await database;
    final data =
        await db.rawQuery("SELECT * FROM movie WHERE title LIKE '%$title%'");
    List<Movie> movies = [];
    for (final item in data) movies.add(Movie.fromJson(item));
    return movies;
  }
}
