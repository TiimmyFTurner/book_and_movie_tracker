import 'package:flutter/material.dart';
import 'package:book_and_movie_tracker/provider/providers.dart';
import 'package:intl/intl.dart';
import 'package:shamsi_date/extensions.dart';

String jalaliFormatter(Date d) {
  final f = d.formatter;
  return "${f.d} ${f.mN} ${f.yyyy}";
}

String localDateFormatter(date,BuildContext context){
  bool jalali = context.watch<SettingProvider>().jalali;
  if(date == null || date.runtimeType == String) {
    return '';
  } else if(jalali){
    return jalaliFormatter(Gregorian.fromDateTime(date).toJalali());


  }else{
    return DateFormat.yMMMd().format(date);
  }
}