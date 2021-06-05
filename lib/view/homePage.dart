import 'package:book_and_movie_tracker/view/addItem.dart';
import 'package:book_and_movie_tracker/view/search.dart';
import 'package:book_and_movie_tracker/view/setting.dart';
import 'package:book_and_movie_tracker/view/statistics.dart';
import 'package:book_and_movie_tracker/widget/bookCard.dart';
import 'package:book_and_movie_tracker/widget/movieCard.dart';
import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/widget/FilmBottomNavigator.dart';

TabController controller;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

  Widget myListCard() {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            blurRadius: 2,
          ),
        ],
      ),
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
                    "The Blue Book",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red[800],
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800],
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800],
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800],
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800],
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "251 page",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      // fontWeight: FontWeight.w100,
                    ),
                  ),
                  Text(
                    "3/6/1400 - 10 Day",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      // fontWeight: FontWeight.w400,
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

  Widget myListCard2() {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            blurRadius: 2,
          ),
        ],
      ),
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
                    "JL Sbyder Cut",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red[800],
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red[800],
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800],
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800],
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red[800],
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "241 Minute",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      // fontWeight: FontWeight.w100,
                    ),
                  ),
                  Text(
                    "12/1/1400 - 1 Day",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      // fontWeight: FontWeight.w400,
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

  Widget myBody1(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(2, 5, 2, 70),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return BookCard(null);
        },
        separatorBuilder: (BuildContext context, int index) =>
            Container(height: 0),
      ),
    );
  }

  Widget myBody2(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(2, 5, 2, 70),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return MovieCard(null);
        },
      ),
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
            style: TextStyle(color: Colors.black),
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
            myBody1(context),
            myBody2(context),
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
    ); //Scaffold
  }
}
