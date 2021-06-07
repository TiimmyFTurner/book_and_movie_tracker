import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  Widget myBody() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Today",
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
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.centerLeft,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color(0xffcde7fe),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "Movie" + "\n120 Minute",
                            style: TextStyle(
                              fontSize: 16, color: Colors.black, height: 1.4,
                              // fontWeight: FontWeight.w500,
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
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.centerLeft,
                          height: 70,
                          decoration: BoxDecoration(
                              color: Color(0xffb8ffb1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            "10 minute" + "\nmore than last day",
                            style: TextStyle(
                              fontSize: 16, color: Colors.black, height: 1.4,
                              // fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "This Month",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.centerLeft,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffffcdce),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "Movie" + "\n560 Minute",
                                style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                  height: 1.4,
                                  // fontWeight: FontWeight.w500,
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
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.centerLeft,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xfffdffb1),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "120 minute" + "\nmore than last Month",
                                style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                  height: 1.4,
                                  // fontWeight: FontWeight.w500,
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
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.centerLeft,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffc8ffea),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "Book" + "\n230 Page",
                                style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                  height: 1.4,
                                  // fontWeight: FontWeight.w500,
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
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.centerLeft,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffb1faff),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "50 pages" + "\nmore than last Month",
                                style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                  height: 1.4,
                                  // fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "This Year",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.centerLeft,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffccd8fe),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "Movie" + "\n560 Minute",
                                style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                  height: 1.4,
                                  // fontWeight: FontWeight.w500,
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
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.centerLeft,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffffb1d8),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "120 minute" + "\nmore than last Month",
                                style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                  height: 1.4,
                                  // fontWeight: FontWeight.w500,
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
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.centerLeft,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffffe2c8),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "Book" + "\n230 Page",
                                style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                  height: 1.4,
                                  // fontWeight: FontWeight.w500,
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
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.centerLeft,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color(0xffddffb2),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                "50 pages" + "\nmore than last Month",
                                style: TextStyle(
                                  fontSize: 16, color: Colors.black,
                                  height: 1.4,
                                  // fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
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
          "Statistics",
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
          ), //IconButton
        ], //Widget
      ), //AppBar,

      body: myBody(),
    );
  }
}
