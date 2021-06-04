import 'package:book_and_movie_tracker/provider/providers.dart';
import 'package:book_and_movie_tracker/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initAppSetting().then(
      (value) => Future.delayed(Duration(seconds: 3)).then(
        (value) => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => HomePage(),
          ),
        ),
      ),
    );
  }

  Future initAppSetting() async {
    await context.read<SettingProvider>().readSetting();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/images/splash.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Center(
            child: Shimmer.fromColors(
              baseColor: Theme.of(context).primaryColor,
              highlightColor: Theme.of(context).accentColor,
              child: Text(
                "BOOK AND MOVIE\nTRACKER",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, fontFamily: "TrainOne"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
