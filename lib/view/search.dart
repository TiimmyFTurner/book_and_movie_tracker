import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "جستجو",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Icon(Icons.settings, color: Colors.red,),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.red,),
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            Container(
              child: Padding(padding: EdgeInsets.only(top: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Material(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'جستجو',
                            icon: Padding(

                              padding: EdgeInsets.only(left: 15),
                              child: Icon(Icons.search, color: Colors.red,),
                            ),
                          ),
                          textAlign: TextAlign.right,
                        ),
                        elevation: 20,
                        borderRadius: BorderRadius.circular(20),
                        shadowColor: Colors.grey[200],
                      ),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
