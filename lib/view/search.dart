import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:book_and_movie_tracker/view/homePage.dart';
import 'package:book_and_movie_tracker/view/setting.dart';
import 'package:book_and_movie_tracker/widget/bookCard.dart';
import 'package:book_and_movie_tracker/widget/movieCard.dart';
import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<dynamic> _items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "جستجو",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.settings, color: Theme.of(context).primaryColor),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Setting()),
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          IconButton(
            icon: Icon(Icons.home_outlined,
                color: Theme.of(context).primaryColor),
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(6),
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(9),
                shadowColor: Colors.grey[200],
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    border: InputBorder.none,
                    hintText: 'جستجو',
                    icon: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.search,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    context.read<SearchProvider>().search(value);
                  },
                ),
              ),
            ),
            Expanded(child: _movieList(context))
          ],
        ),
      ),
    );
  }

  Widget _movieList(BuildContext context) {
    _items = context.watch<SearchProvider>().searchItems;
    if (_items.length == 0)
      return Center(
          child: Text(
        "متاسفانه فیلم یا کتابی با این کلمه کلیدی پیدا نشد :(",
        textDirection: TextDirection.rtl,
      ));
    return Container(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(2),
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return _items[index].runtimeType == Movie
              ? MovieCard(_items[index])
              : BookCard(_items[index]);
        },
      ),
    );
  }
}
