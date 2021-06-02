
import 'package:book_and_movie_tracker/view/addItem.dart';
import 'package:book_and_movie_tracker/view/search.dart';
import 'package:book_and_movie_tracker/view/setting.dart';
import 'package:book_and_movie_tracker/view/statistics.dart';
import 'package:flutter/material.dart';

import '../FilmBottomNavigator.dart';


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
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(10),
      color: Color(0x60EFFFF5),
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 80),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return myListCard();
        },
        separatorBuilder: (BuildContext context, int index) => Container(
          height: 15,
        ),
      ),
    );
  }

  Widget myBody2(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(10),
      color: Color(0x60EFFFF5),
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 80),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return myListCard2();
        },
        separatorBuilder: (BuildContext context, int index) => Container(
          height: 15,
        ),
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
          title: Text(
            "BaM Tracker",
            style: TextStyle(color: Colors.black),
          ), //Text
          centerTitle: true,
          leading:  IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.red,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>Setting()),
              );
            },
          ), //Icon, //Icon
          backgroundColor: Color(0xffeffff5),
          elevation: 0,
          actions: <Widget>[
             IconButton(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.red[800],
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Search()),
                );
              },
            ), //IconButton
            IconButton(
              icon: Icon(
                Icons.bar_chart,
                color: Colors.red[800],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Statistics()),
                );
              },
            ),
          ], //Widget
        ), //AppBar

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
          backgroundColor: Color(0xff01c4fe),
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
