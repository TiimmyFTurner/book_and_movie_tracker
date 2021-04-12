<<<<<<< HEAD
class Mvoie {
  final int id, time, watchTime, rate;
  final String title, creator, favActor, note;
  final DateTime date;

  Mvoie({
    this.id,
    this.title,
    this.creator,
    this.favActor,
    this.time,
    this.rate,
    this.note,
    this.date,
    this.watchTime,
  });
}
=======
import 'package:book_and_movie_tracker/database_connection.dart';

/*int j = await Databaseconnection.instanse.ins({
    Databaseconnection.cTitle:
    .
    .
    .
});
print('The unserted id is $j');*/

/*List<Map<String, dynamic>> queryRow =
    await Databaseconnection.instance.queryAll2();
    print(queryRow);*/

/*int rowsEf = await Databaseconnection.instance.del(id);
print(rowsEf);*/

var s = await Databaseconnection.instance.search2(_tbName, param, args)
>>>>>>> database
