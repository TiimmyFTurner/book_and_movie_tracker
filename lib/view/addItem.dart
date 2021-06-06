import 'package:book_and_movie_tracker/helper/localDateFormatter.dart';
import 'package:book_and_movie_tracker/model/book.dart';
import 'package:book_and_movie_tracker/model/movie.dart';
import 'package:book_and_movie_tracker/view/homePage.dart';
import 'package:book_and_movie_tracker/view/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';

class AddBook extends StatefulWidget {
  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final GlobalKey<FormState> _addBookFormKey = GlobalKey<FormState>();
  Map<String, dynamic> _addBookData = {
    'id': 0,
    'title': '',
    'writer': '',
    'pages': 0,
    'read_time': 0,
    'rate': 0,
    'note': '',
    'image_path': '',
    'date': null
  };

  Widget myBody() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Form(
        key: _addBookFormKey,
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "اسم کتاب",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) =>
                        value.isEmpty || value.length < 1
                            ? 'نمیتواند خالی باشد'
                            : null,
                    onSaved: (String value) {
                      _addBookData['title'] = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "نویسنده",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) =>
                        value.isEmpty || value.length < 1
                            ? 'نمیتواند خالی باشد'
                            : null,
                    onSaved: (String value) {
                      _addBookData['writer'] = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "تعداد صفحات",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) {
                      if (value.isEmpty || value.length < 1)
                        return 'نمیتواند خالی باشد';
                      return null;
                    },
                    onSaved: (String value) {
                      _addBookData['pages'] = int.parse(value);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "زمان مطالعه (روز)",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) =>
                        value.isEmpty || value.length < 1
                            ? 'نمیتواند خالی باشد'
                            : null,
                    onSaved: (String value) {
                      _addBookData['read_time'] = int.parse(value);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1)
                    ],
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "امتیاز (از صفر تا پنج)",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty || value.length < 1)
                        return 'نمیتواند خالی باشد';
                      if (int.parse(value) > 5)
                        return 'نمیتواند بیشتر از 5 باشد';
                      return null;
                    },
                    onSaved: (String value) {
                      _addBookData['rate'] = int.parse(value);
                    },
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(6),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    child: Text(
                      " تاریخ " +
                          localDateFormatter(_addBookData['date'], context),
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  onPressed: () => showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2018),
                    lastDate: DateTime.now(),
                  ).then((value) {
                    setState(() {
                      _addBookData['date'] = value;
                    });
                  }),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "یادداشت",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    onSaved: (String value) {
                      _addBookData['note'] = value;
                    },
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: Text(
                        "ثبت کتاب",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_addBookFormKey.currentState.validate()) {
                        _addBookFormKey.currentState.save();
                        if (_addBookData['date'] == '' ||
                            _addBookData['date'] == 'null')
                          _addBookData['date'] = DateTime.now();
                        _addBookData['date'] = _addBookData['date'].toString();
                        Book book = Book.fromJson(_addBookData.cast());
                        context.read<BookProvider>().addBook(book);
                        Navigator.of(context).pop();
                      }
                    }),
                SizedBox(height: 8),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).accentColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9))),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: Text(
                        "انتقال به فرم اضافه کردن فیلم",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => AddMovie()));
                    }),
              ],
            ),
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
          "اضافه کردن کتاب",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.settings,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Setting()),
            );
          },
        ),
        //IconButton
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
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
  final GlobalKey<FormState> _addMovieFormKey = GlobalKey<FormState>();
  Map<String, dynamic> _addMovieData = {
    'id': 0,
    'title': '',
    'creator': '',
    'fav_actor': '',
    'time': 0,
    'watch_time': 0,
    'rate': 0,
    'note': '',
    'image_path': '',
    'date': null
  };

  Widget myBody() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Form(
        key: _addMovieFormKey,
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "اسم فیلم",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) =>
                        value.isEmpty || value.length < 1
                            ? 'نمیتواند خالی باشد'
                            : null,
                    onSaved: (String value) {
                      _addMovieData['title'] = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "کارگردان",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) =>
                        value.isEmpty || value.length < 1
                            ? 'نمیتواند خالی باشد'
                            : null,
                    onSaved: (String value) {
                      _addMovieData['creator'] = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "بازیگر مورد علاقه",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    onSaved: (String value) {
                      _addMovieData['fav_actor'] = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "زمان (دقیقه)",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) =>
                        value.isEmpty || value.length < 1
                            ? 'نمیتواند خالی باشد'
                            : null,
                    onSaved: (String value) {
                      _addMovieData['time'] = int.parse(value);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "زمان تماشا (روز)",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (String value) =>
                        value.isEmpty || value.length < 1
                            ? 'نمیتواند خالی باشد'
                            : null,
                    onSaved: (String value) {
                      _addMovieData['watch_time'] = int.parse(value);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1)
                    ],
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "امتیاز (از صفر تا پنج)",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty || value.length < 1)
                        return 'نمیتواند خالی باشد';
                      if (int.parse(value) > 5)
                        return 'نمیتواند بیشتر از 5 باشد';
                      return null;
                    },
                    onSaved: (String value) {
                      _addMovieData['rate'] = int.parse(value);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(6),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    child: Text(
                      " تاریخ " +
                          localDateFormatter(_addMovieData['date'], context),
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  onPressed: () => showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2018),
                    lastDate: DateTime.now(),
                  ).then((value) {
                    setState(() {
                      _addMovieData['date'] = value;
                    });
                  }),
                ),
                SizedBox(
                  height: 10,
                ),
                PhysicalModel(
                  borderRadius: BorderRadius.circular(9),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shadowColor: Colors.black,
                  elevation: 6,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                     fontSize: 17,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "یادداشت",
                      hintStyle: TextStyle(
                       fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    onSaved: (String value) {
                      _addMovieData['note'] = value;
                    },
                  ),
                ),

                // ElevatedButton(
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all(Colors.white),
                //     shape: MaterialStateProperty.all(
                //       RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(10)),
                //       ),
                //     ),
                //     child: Container(
                //       alignment: Alignment.center,
                //       width: MediaQuery.of(context).size.width,
                //       height: 50,
                //       child: Text(
                //         "Pick Image",
                //         style: TextStyle(
                //           fontSize: 17,
                //           color: Colors.black,
                //           // fontWeight: FontWeight.w500,
                //         ),
                //       ),
                //     ),
                //     onPressed: () {}),
                SizedBox(height: 25),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: Text(
                        "ثبت فیلم",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_addMovieFormKey.currentState.validate()) {
                        _addMovieFormKey.currentState.save();
                        if (_addMovieData['date'] == '' ||
                            _addMovieData['date'] == 'null')
                          _addMovieData['date'] = DateTime.now();
                        _addMovieData['date'] =
                            _addMovieData['date'].toString();
                        Movie movie = Movie.fromJson(_addMovieData.cast());
                        context.read<MovieProvider>().addMovie(movie);
                        Navigator.of(context).pop();
                      }
                    }),
                SizedBox(height: 8),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).accentColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: Text(
                        "انتقال به فرم اضافه کردن کتاب",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => AddBook()));
                    }),
              ],
            ),
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
          "اضافه کردن فیلم",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.settings,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Setting()),
            );
          },
        ),
        //IconButton
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
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
