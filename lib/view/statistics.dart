import 'package:book_and_movie_tracker/view/homePage.dart';
import 'package:book_and_movie_tracker/view/setting.dart';
import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  Widget myBody() {
    var _sp = context.watch<StatisticsProvider>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Text(
                  "امروز",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffcde7fe),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "فیلم" + "\n${_sp.todayMovie}" + " دقیقه",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffb8ffb1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "${_sp.todayMovieDiff}" + " دقیقه" + "\nبیشتر از دیروز",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Text(
                  "این ماه",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffffcdce),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "فیلم" + "\n${_sp.thisMonthMovie}" + " دقیقه",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xfffdffb1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "${_sp.thisMonthMovieDiff}" +
                            " دقیقه" +
                            "\nبیشتر از ماه قبل",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffc8ffea),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "کتاب" + "\n${_sp.thisMonthBook}" + " صفحه",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffb1faff),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "${_sp.thisMonthBookDiff}" +
                            " صفحه" +
                            "\nبیشتر از ماه قبل",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Text(
                  "امسال",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffccd8fe),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "فیلم" + "\n${_sp.thisYearMovie}" + " دقیقه",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffffb1d8),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "${_sp.thisYearMovieDiff}" +
                            " دقیقه" +
                            "\nبیشتر از سال قبل",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffffe2c8),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "کتاب" + "\n${_sp.thisYearBook}" + " صفحه",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffddffb2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "${_sp.thisYearBookDiff}" +
                            " صفحه" +
                            "\nبیشتر از سال قبل",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Statistics",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.settings,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Setting()),
            );
          },
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
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
