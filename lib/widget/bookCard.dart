import 'package:book_and_movie_tracker/model/book.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final Book book2;

  const BookCard(this.book2, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Book book = Book(
      writer: 'رضا',
      date: DateTime.now(),
      pages: 314,
      id: 1,
      imagePath: 'null',
      note: 'عالیه ناموسا',
      rate: 3,
      readTime: 7,
      title: 'خاطرات رضا',
    );

    List<Widget> rateHearts = [];
    for (int i = 5; i > 0; i--) {
      if (i <= book.rate)
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
                    book.title,
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
                    book.pages.toString() + " صفحه",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "${book.date.toString().substring(0, 10)} | ${book.readTime} روز ",
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
