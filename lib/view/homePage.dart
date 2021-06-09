import 'package:book_and_movie_tracker/view/addItem.dart';
import 'package:book_and_movie_tracker/view/search.dart';
import 'package:book_and_movie_tracker/view/setting.dart';
import 'package:book_and_movie_tracker/view/statistics.dart';
import 'package:book_and_movie_tracker/widget/bookCard.dart';
import 'package:book_and_movie_tracker/widget/movieCard.dart';
import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/widget/FilmBottomNavigator.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';

TabController controller;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Future<List> books, movies;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

  Widget _bookList(BuildContext context) {
    books = context.watch<BookProvider>().books;
    return FutureBuilder<List>(
      future: books,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.length == 0) {
            return Center(
                child: Text("شما هنوز کتابی اضافه نکردید!",
                    textDirection: TextDirection.rtl));
          }
          return Container(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(2, 5, 2, 70),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return BookCard(snapshot.data[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  Container(height: 0),
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _movieList(BuildContext context) {
    movies = context.watch<MovieProvider>().movies;
    return FutureBuilder<List>(
      future: movies,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.length == 0) {
            return Center(
                child: Text("شما هنوز فیلمی اضافه نکردید!",
                    textDirection: TextDirection.rtl));
          }
          return Container(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.fromLTRB(2, 5, 2, 70),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return MovieCard(snapshot.data[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  Container(height: 0),
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          title: Text(
            "BaM Tracker",
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.settings, color: Theme.of(context).primaryColor),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Setting()),
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search_outlined,
                  color: Theme.of(context).primaryColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
            ),
            IconButton(
              icon:
                  Icon(Icons.bar_chart, color: Theme.of(context).primaryColor),
              onPressed: () {
                context.read<StatisticsProvider>().initStatistics();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Statistics()),
                );
              },
            ),
          ],
        ),
        body: TabBarView(
          controller: controller,
          children: [
            _bookList(context),
            _movieList(context),
          ],
        ),
        bottomNavigationBar: FilmBottomNavigator(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (controller.index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddBook()),
              );
            } else if (controller.index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddMovie()),
              );
            }
          },
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
