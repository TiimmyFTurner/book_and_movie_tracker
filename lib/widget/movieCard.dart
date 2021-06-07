import 'package:book_and_movie_tracker/helper/localDateFormatter.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard(this.movie, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> rateHearts = [];
    for (int i = 5; i > 0; i--) {
      if (i <= movie.rate)
        rateHearts.add(Icon(Icons.favorite,
            color: Theme.of(context).primaryColor, size: 20));
      else
        rateHearts.add(Icon(Icons.favorite_border,
            color: Theme.of(context).primaryColor, size: 20));
    }
    _dialog(context) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text(movie.title, overflow: TextOverflow.ellipsis)),
                IconButton(
                    icon: Icon(Icons.delete_outline, color: Colors.red),
                    onPressed: () {
                      context.read<MovieProvider>().deleteMovie(movie.id);
                      Navigator.of(context).pop();
                    })
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: rateHearts,
                  ),
                ),
                Row(
                  children: [
                    Text('کارگردان: ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Expanded(
                        child: Text(movie.creator,
                            overflow: TextOverflow.ellipsis))
                  ],
                ),
                Row(
                  children: [
                    Text('بازیگر(های) مورد علاقه: ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Expanded(
                        child: Text(movie.favActor))
                  ],
                ),
                Row(
                  children: [
                    Text('زمان (دقیقه): ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Text(movie.time.toString())
                  ],
                ),
                Row(
                  children: [
                    Text('زمان تماشا (روز): ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Text(movie.watchTime.toString())
                  ],
                ),
                Row(
                  children: [
                    Text('تاریخ: ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Text(localDateFormatter(movie.date, context))
                  ],
                ),
                Row(
                  children: [
                    Text('یادداشت: ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Expanded(child: Text(movie.note))
                  ],
                ),
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('خوبه'),
              ),
            ],
          ),
        ),
      );
    }

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: (BorderRadiusDirectional.all(Radius.circular(9)))),
      elevation: 6,
      child: InkWell(
        onTap: () {
          _dialog(context);
        },
        child: Row(
          children: [
            //for image
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      movie.title,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: rateHearts),
                    Text(
                      movie.time.toString() + " دقیقه",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "${movie.watchTime} روز " +
                          " | ${localDateFormatter(movie.date, context)} ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
