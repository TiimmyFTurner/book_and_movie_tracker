import 'package:book_and_movie_tracker/provider/providers.dart';
import 'package:book_and_movie_tracker/view/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BookProvider()),
        ChangeNotifierProvider(create: (_) => MovieProvider()),
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => SettingProvider()),
        ChangeNotifierProvider(create: (_) => StatisticsProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
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
