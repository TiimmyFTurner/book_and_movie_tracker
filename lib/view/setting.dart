import 'package:book_and_movie_tracker/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تنظیمات',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        elevation: 0,
        actions: [
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
          )
        ],
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios,
                color: Theme.of(context).primaryColor)),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: SwitchListTile(
                value: context.watch<SettingProvider>().jalali,
                onChanged: (bool value) {
                  setState(() {
                    context.read<SettingProvider>().jalali = value;
                  });
                },
                title: Text(
                  'جلالی',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
