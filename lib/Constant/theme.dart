// import 'package:flutter/material.dart';

// class MyAppColors {
//   static final darkBlue = Color(0xFF1E1E2C);
//   static final lightBlue = Color(0xFF2D2D44);
// }

// class MyAppThemes {
//   static final lightTheme = ThemeData(
//     primaryColor: MyAppColors.lightBlue,
//     brightness: Brightness.light,
//   );

//   static final darkTheme = ThemeData(
//     primaryColor: MyAppColors.darkBlue,
//     brightness: Brightness.dark,
//   );
// }

import 'package:shared_preferences/shared_preferences.dart';

class ThemeSharredPreferences {
  static const PREF_KEY = "preferences";

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(PREF_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(PREF_KEY) ?? false;
  }
}
