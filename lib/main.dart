import 'package:book_and_movie_tracker/view/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Koodak',
        accentColor: Color(0xff00c3ff),
        scaffoldBackgroundColor: Color(0xffEFFFF6),
        primaryColor: Color(0xffef7f7f),
        cardColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}
