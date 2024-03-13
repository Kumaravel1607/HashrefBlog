// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({required Key key}) : super(key: key);

//   @override
//   HomePageState createState() => HomePageState();
// }

// class HomePageState extends State<HomePage> {
//   int selectedIndex = 0;
//   final widgetOptions = [
//     Text('Home'),
//     Text('Add'),
//     Text('Favourites'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Beer App'),
//       ),
//       body: Center(
//         child: widgetOptions.elementAt(selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.local_drink), label: Text('data') ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.add_a_photo), label: Text('New List')),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.favorite), label: Text('Favourites')),
//         ],
//         currentIndex: selectedIndex,
//         fixedColor: Colors.deepPurple,
//         onTap: onItemTapped,
//       ),
//     );
//   }

//   void onItemTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }
// }