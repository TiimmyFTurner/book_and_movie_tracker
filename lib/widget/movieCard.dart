import 'package:book_and_movie_tracker/helper/localDateFormatter.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Movie movie2;

  const MovieCard(this.movie2, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Movie movie = Movie(
        creator: 'ممد',
        date: DateTime.now(),
        favActor: 'قلی',
        id: 1,
        imagePath: 'null',
        note: 'عالیه ناموسا',
        rate: 2,
        time: 120,
        title: 'mamad dar khane',
        watchTime: 13);

    List<Widget> rateHearts = [];
    for (int i = 5; i > 0; i--) {
      if (i <= movie.rate)
        rateHearts.add(Icon(Icons.favorite, color: Colors.red, size: 20));
      else
        rateHearts
            .add(Icon(Icons.favorite_border, color: Colors.red, size: 20));
    }

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: (BorderRadiusDirectional.all(Radius.circular(9)))),
      elevation: 6,
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
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    movie.title,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    // height: 25,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: rateHearts),
                  ),
                  Text(
                    movie.time.toString() + " دقیقه",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "${movie.watchTime} روز " + " | ${localDateFormatter(movie.date,context)} ",
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
    );
  }
}
