import 'package:flutter/foundation.dart';

class SettingProvider extends ChangeNotifier {
  //TODO: save jalali data as key value in phone
  bool _jalali = true;
  set jalali(bool value) {
    _jalali = value;
    notifyListeners();
  }

   bool get jalali => _jalali;
}
