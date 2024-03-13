import 'package:demo1/Constant/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheamModal extends ChangeNotifier {
  late bool _isDark;
  late ThemeSharredPreferences theamSharredPreferences;
  bool get isDark => _isDark;

  TheamModal() {
    _isDark = false;
    theamSharredPreferences = ThemeSharredPreferences();
    getTheamPreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    theamSharredPreferences.setTheme(value);
    notifyListeners();
  }

  getTheamPreferences() async {
    _isDark = await theamSharredPreferences.getTheme();
    notifyListeners();
  }
}
