import 'package:book_and_movie_tracker/view/homePage.dart';
import 'package:book_and_movie_tracker/view/setting.dart';
import 'package:flutter/material.dart';

class AddBook extends StatefulWidget {
  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  Widget myBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Title",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Writer",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Pages",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Read_time",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Rate",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Date",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Note",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Text(
                    "Pick Image",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {}),
            SizedBox(
              height: 17,
            ),
            RaisedButton(
                color: Color(0xfff0807f),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Text(
                    "Add Book",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {}),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                color: Color(0xff01c3ff),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Text(
                    "switch to Add Movie Form",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {}),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Book",
          style: TextStyle(color: Colors.black),
        ), //Text
        centerTitle: true,
        leading: Icon(
          Icons.settings,
          color: Colors.red,
        ), //Icon
        backgroundColor: Color(0xffeffff5),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.red,
            ),
            onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ), //IconButton
        ], //Widget
      ), //AppBar,

      body: myBody(),
    );
  }
}



class AddMovie extends StatefulWidget {
  @override
  _AddMovieState createState() => _AddMovieState();
}

class _AddMovieState extends State<AddMovie> {
  Widget myBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Title",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Creator",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Fav_actor",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Time",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Watch_time",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Rate",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Date",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Note",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Text(
                    "Pick Image",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {}),
            SizedBox(
              height: 17,
            ),
            RaisedButton(
                color: Color(0xfff0807f),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Text(
                    "Add Movie",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {}),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                color: Color(0xff01c3ff),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: Text(
                    "switch to Add Book Form",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {}),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(

          "Add Movie",
          style: TextStyle(color: Colors.black),
      ), //Te

    centerTitle: true,
        leading: IconButton(
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
        ), //Icon
        backgroundColor: Color(0xffeffff5),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.red,
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ), //IconButton
        ], //Widget
      ), //AppBar,

      body: myBody(),
    );
  }
}
