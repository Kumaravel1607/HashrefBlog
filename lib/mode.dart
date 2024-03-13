// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   ThemeMode _themeMode = ThemeMode.system;

//   void _toggleTheme(ThemeMode themeMode) {
//     setState(() {
//       _themeMode = themeMode;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         actions: <Widget>[],
//       ),
//       body: Center(
//         child: Switch(
//           value: isDarkMode,
//           onChanged: (isOn) {
//             isOn ? _toggleTheme(ThemeMode.dark) : _toggleTheme(ThemeMode.light);
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:demo1/Constant/mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, TheamModal theamNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(theamNotifier.isDark ? "Dark Theme" : "Light Theme"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SwitcherButton(
                  value: theamNotifier.isDark ? false : true,
                  onChange: (value) {
                    theamNotifier.isDark
                        ? theamNotifier.isDark = false
                        : theamNotifier.isDark = true;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Text("This is a demo for Theme Swicher"),
              ],
            ),
          ),
        );
      },
    );
  }
}
