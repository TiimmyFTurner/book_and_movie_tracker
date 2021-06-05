import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/view/homePage.dart';


class FilmBottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: TabBar(
        labelColor: Colors.black,
        controller: controller,
        tabs: <Widget>[
          Tab(
            icon: Icon(
              Icons.import_contacts_sharp,
              size: 30,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.theaters_sharp,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

// child: Container(
//         height: 60,
//         color: Colors.redAccent,
//         child: Row(
//           children: <Widget>[
//             Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width / 2,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Icon(
//                     Icons.import_contacts_sharp,
//                     color: Colors.black87,
//                   ),
//                 ], //<Widget>
//               ), //Row
//             ), //Container
//             Container(
//               height: 50,
//               width: MediaQuery.of(context).size.width / 2,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Icon(
//                     Icons.theaters_sharp,
//                     color: Colors.black87,
//                   ),
//                 ], //<Widget>
//               ), //Row
//             ) //Container
//           ], //<Widget>
//         ), //Row
//       ), //
