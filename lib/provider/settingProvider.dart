import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier {
  SharedPreferences _prefs;
  bool _jalali;

  Future readSetting() async {
    _prefs = await SharedPreferences.getInstance();
    _jalali = _prefs.getBool('jalali') ?? false;
    notifyListeners();
  }

  set jalali(bool value) {
    _prefs.setBool('jalali', value);
    _jalali = value;
    notifyListeners();
  }

  bool get jalali => _jalali;
}
