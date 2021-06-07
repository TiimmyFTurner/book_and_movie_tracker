import 'package:book_and_movie_tracker/helper/localDateFormatter.dart';
import 'package:book_and_movie_tracker/model/book.dart';
import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard(this.book, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> rateHearts = [];
    for (int i = 5; i > 0; i--) {
      if (i <= book.rate)
        rateHearts.add(Icon(Icons.favorite, color: Theme.of(context).primaryColor, size: 20));
      else
        rateHearts
            .add(Icon(Icons.favorite_border, color: Theme.of(context).primaryColor, size: 20));
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
                    child: Text(book.title, overflow: TextOverflow.ellipsis)),
                IconButton(
                    icon: Icon(Icons.delete_outline, color: Colors.red),
                    onPressed: () {
                      context.read<BookProvider>().deleteBook(book.id);
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
                    Text('نویسنده: ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Expanded(
                        child:
                            Text(book.writer, overflow: TextOverflow.ellipsis))
                  ],
                ),
                Row(
                  children: [
                    Text('صفحات: ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Text(book.pages.toString())
                  ],
                ),
                Row(
                  children: [
                    Text('زمان مطالعه (روز): ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Text(book.readTime.toString())
                  ],
                ),
                Row(
                  children: [
                    Text('تاریخ: ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Text(localDateFormatter(book.date, context))
                  ],
                ),
                Row(
                  children: [
                    Text('یادداشت: ',
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    Expanded(child: Text(book.note))
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
                      book.title,
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
                      book.pages.toString() + " صفحه",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "${book.readTime} روز " +
                          " | ${localDateFormatter(book.date, context)} ",
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
