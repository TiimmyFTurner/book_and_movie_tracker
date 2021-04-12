import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';

class Databaseconnection {
  static final _dbName = 'myDatabase.db';
  static final _dbVersion = 1;
  static final _tableName = 'Book';
  static final columnId = 'id';
  static final columnTitle = 'title';
  static final columnWriter = 'writer';
  static final columnPages = 'page';
  static final columnRead = 'read_time';
  static final columnRate = 'rate';
  static final columnDate = 'date';
  static final columnNote = 'note';
  static final _tbName = 'Movie';
  static final cId = 'id';
  static final cTitle = 'title';
  static final cCreator = 'creator';
  static final cFavActor = 'favorite_actor';
  static final cTime = 'time';
  static final cWatch = 'watch_time';
  static final cRate = 'rate';
  static final cDate = 'date';
  static final cNote = 'note';

  Databaseconnection._privateConstructor();
  static final Databaseconnection instance =
      Databaseconnection._privateConstructor();
  static Database _database;
  Future<Database> get Database async {
    if (_database != null) return _database;
    _database = await _initiateDatabase();
    return _database;
  }

  _initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) {
    db.execute('''
      CREATE TABLE $_tableName(
        $columnId INTEGER PRIMARY KEY autoincrement,
        $columnTitle text NOT NULL,
        $columnWriter text NOT NULL,
        $columnPages INTEGER NOT NULL,
        $columnRead INTEGER NOT NULL,
        $columnRate INTEGER NOT NULL,
        $columnDate DATE NOT NULL,
        $columnNote text NOT NULL
        )
        CREATE TABLE $_tbName(
          $cId INTEGER PRIMARY KEY autoincrement,
          $cTitle text NOT NULL,
          $cCreator text NOT NULL,
          $cFavActor text NOT NULL,
          $cTime INTEGER NOT NULL,
          $cWatch INTEGER NOT NULL,
          $cRate INTEGER NOT NULL,
          $cDate DATE NOT NULL,
          $cNote text NOT NULL
        ) ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tableName, row);
  }

  Future<int> ins(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tbName, row);
  }

  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(_tableName, where: '$columnId=?', whereArgs: [id]);
  }

  Future<int> del(int id) async {
    Database db = await instance.database;
    return await db.delete(_tbName, where: '$cId=?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await instance.database;
    return await db.query(_tableName);
  }

  Future<List<Map<String, dynamic>>> queryAll2() async {
    Database db = await instance.database;
    return await db.query(_tbName);
  }

  Future<List<Map<String, dynamic>>> search(_tableName, param, args) async {
    Database db = await instance.database;
    return await db
        .rawQuery("SELECT * FROM $tableName WHERE $param LIKE '%$args%'");
  }

  Future<List<Map<String, dynamic>>> search2(_tbName, param, args) async {
    Database db = await instance.database;
    return await db
        .rawQuery("SELECT * FROM $_tbName WHERE $param LIKE '%$args%'");
  }
}
