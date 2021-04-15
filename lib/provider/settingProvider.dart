import 'package:flutter/foundation.dart';

class SettingProvider extends ChangeNotifier {
  bool _jalali;
  set jalali(bool value) {
    _jalali = value;
    notifyListeners();
  }

  get jalali => _jalali;
}
