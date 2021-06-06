import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';
import 'package:intl/intl.dart';
String localDateFormatter(date,BuildContext context){
  bool jalali = context.watch<SettingProvider>().jalali;
  if(date == null || date.runtimeType == String)
    return '';
  else if(jalali){
    return 'TODO';
  }else{
    return DateFormat.yMMMd().format(date);
  }
}