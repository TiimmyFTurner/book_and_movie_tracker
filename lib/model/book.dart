<<<<<<< HEAD
class Book {
  final int id, pages, readTime, rate;
  final String title, writer, note;
  final DateTime date;

  Book({
    this.id,
    this.title,
    this.writer,
    this.pages,
    this.rate,
    this.note,
    this.date,
    this.readTime,
  });
}
=======
import 'package:book_and_movie_tracker/database_connection.dart';

/*int i = await Databaseconnection.instanse.insert({
    Databaseconnection.columnTitle:
    .
    .
    .
});
print('The unserted id is $i');*/

/*List<Map<String, dynamic>> queryRows =
    await Databaseconnection.instance.queryAll();
    print(queryRows);*/

/*int rowsEffected = await Databaseconnection.instance.delete(id);
print(rowsEffected);*/

var s = await Databaseconnection.instance.search(_tableName, param, args);
>>>>>>> database
