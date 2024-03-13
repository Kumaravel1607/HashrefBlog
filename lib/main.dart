// // // // import 'package:carousel_slider/carousel_slider.dart';
// // // // import 'package:flutter/material.dart';

// // // // void main() {
// // // //   runApp(MyApp());
// // // // }

// // // // class MyApp extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return MaterialApp(
// // // //       title: 'Flutter Carousel Slider',
// // // //       debugShowCheckedModeBanner: false,
// // // //       home: Scaffold(
// // // //         appBar: AppBar(
// // // //           backgroundColor: Colors.pink,
// // // //           title: Text('Flutter Carousel Slider Example'),
// // // //         ),
// // // //         body: CarouselSlider(
// // // //           items: [
// // // //             Padding(
// // // //               padding: const EdgeInsets.all(20.0),
// // // //               child: Text(
// // // //                 'Android',
// // // //                 style: TextStyle(
// // // //                   fontSize: 24.0,
// // // //                   fontWeight: FontWeight.bold,
// // // //                   backgroundColor: Colors.black45,
// // // //                   color: Colors.white,
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             Padding(
// // // //               padding: const EdgeInsets.all(20.0),
// // // //               child: Text(
// // // //                 'iOS',
// // // //                 style: TextStyle(
// // // //                   fontSize: 24.0,
// // // //                   fontWeight: FontWeight.bold,
// // // //                   backgroundColor: Colors.black45,
// // // //                   color: Colors.white,
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             Padding(
// // // //               padding: const EdgeInsets.all(20.0),
// // // //               child: Text(
// // // //                 'Desktop',
// // // //                 style: TextStyle(
// // // //                   fontSize: 24.0,
// // // //                   fontWeight: FontWeight.bold,
// // // //                   backgroundColor: Colors.black45,
// // // //                   color: Colors.white,
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             Padding(
// // // //               padding: const EdgeInsets.all(20.0),
// // // //               child: Text(
// // // //                 'Web',
// // // //                 style: TextStyle(
// // // //                   fontSize: 24.0,
// // // //                   fontWeight: FontWeight.bold,
// // // //                   backgroundColor: Colors.black45,
// // // //                   color: Colors.white,
// // // //                 ),
// // // //               ),
// // // //             )
// // // //           ],
// // // //           //Slider Container properties
// // // //           options: CarouselOptions(
// // // //             autoPlay: true,
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:carousel_slider/carousel_slider.dart';

// // // final List<String> imagesList = [
// // //   'assets/images/cake.jpg',
// // //   'assets/images/chocolate.jpg',
// // //   'assets/images/ice.jpg',
// // //   'assets/images/bread.jpg',
// // //   'assets/images/rice.jpg'
// // // ];
// // // final List<String> titles = [
// // //   'Cake',
// // //   'Chocolate',
// // //   'Ice Cream ',
// // //   'Bread ',
// // //   'Rice'
// // // ];
// // // void main() {
// // //   runApp(MyApp());
// // // }

// // // class MyApp extends StatefulWidget {
// // //   @override
// // //   _MyAppState createState() => _MyAppState();
// // // }

// // // class _MyAppState extends State<MyApp> {
// // //   int _currentIndex = 0;
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       home: Scaffold(
// // //         appBar: AppBar(
// // //           backgroundColor: Colors.pink,
// // //           title: Text(
// // //             'Carousel',
// // //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// // //           ),
// // //         ),
// // //         body: Column(
// // //           children: [
// // //             CarouselSlider(
// // //               options: CarouselOptions(
// // //                 autoPlay: true,
// // //                 // enlargeCenterPage: true,
// // //                 //scrollDirection: Axis.vertical,
// // //                 onPageChanged: (index, reason) {
// // //                   setState(
// // //                     () {
// // //                       _currentIndex = index;
// // //                     },
// // //                   );
// // //                 },
// // //               ),
// // //               items: imagesList
// // //                   .map(
// // //                     (item) => Padding(
// // //                       padding: const EdgeInsets.all(8.0),
// // //                       child: Card(
// // //                         margin: EdgeInsets.only(
// // //                           top: 10.0,
// // //                           bottom: 10.0,
// // //                         ),
// // //                         elevation: 6.0,
// // //                         shadowColor: Colors.redAccent,
// // //                         shape: RoundedRectangleBorder(
// // //                           borderRadius: BorderRadius.circular(30.0),
// // //                         ),
// // //                         child: ClipRRect(
// // //                           borderRadius: BorderRadius.all(
// // //                             Radius.circular(30.0),
// // //                           ),
// // //                           child: Stack(
// // //                             children: <Widget>[
// // //                               Image.asset(
// // //                                 item,
// // //                                 fit: BoxFit.cover,
// // //                                 width: double.infinity,
// // //                               ),
// // //                               Positioned(
// // //                                 top: 160,
// // //                                 left: 110,
// // //                                 child: Center(
// // //                                   child: Text(
// // //                                     '${titles[_currentIndex]}',
// // //                                     style: TextStyle(
// // //                                       fontSize: 24.0,
// // //                                       fontWeight: FontWeight.bold,
// // //                                       backgroundColor: Colors.black45,
// // //                                       color: Colors.white,
// // //                                     ),
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   )
// // //                   .toList(),
// // //             ),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: imagesList.map((urlOfItem) {
// // //                 int index = imagesList.indexOf(urlOfItem);
// // //                 return Container(
// // //                   width: 10.0,
// // //                   height: 10.0,
// // //                   margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
// // //                   decoration: BoxDecoration(
// // //                     shape: BoxShape.circle,
// // //                     color: _currentIndex == index
// // //                         ? Color.fromRGBO(0, 0, 0, 0.8)
// // //                         : Color.fromRGBO(0, 0, 0, 0.3),
// // //                   ),
// // //                 );
// // //               }).toList(),
// // //             )
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:demo1/Constant/color.dart';
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatefulWidget {
// //   @override
// //   _MyAppState createState() => _MyAppState();
// // }

// // class _MyAppState extends State<MyApp> {
// //   int _selectedIndex = 0;

// //   static List<Widget> _widgetOptions = <Widget>[
// //     HomeScreen(),
// //     ExploreScreen(),
// //     ProfileScreen(),
// //   ];

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'Flutter Bottom Navigation Bar',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       routes: {
// //         '/home': (context) => HomeScreen(),
// //         '/explore': (context) => ExploreScreen(),
// //         '/profile': (context) => ProfileScreen(),
// //       },
// //       home: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: black,
// //           title: Text('Bottom Navigation Bar'),
// //         ),
// //         body: _widgetOptions.elementAt(_selectedIndex),
// //         bottomNavigationBar: BottomNavigationBar(
// //           items: const <BottomNavigationBarItem>[
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.home),
// //               label: 'Home',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.explore),
// //               label: 'Explore',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.person),
// //               label: 'Profile',
// //             ),
// //           ],
// //           currentIndex: _selectedIndex,
// //           onTap: _onItemTapped,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class HomeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 3,
// //       child: Scaffold(
// //         // backgroundColor: Blue,
// //         appBar: AppBar(
// //           backgroundColor: dash,
// //           flexibleSpace: Column(
// //             mainAxisAlignment: MainAxisAlignment.end,
// //             children: [
// //               TabBar(
// //                 tabs: [
// //                   Tab(
// //                     text: 'Incoming',
// //                   ),
// //                   Tab(
// //                     text: 'Outgoing',
// //                   ),
// //                   Tab(
// //                     text: 'Missed',
// //                   ),
// //                 ],
// //               )
// //             ],
// //           ),
// //         ),
// //         body: TabBarView(
// //           children: [
// //             IncomingPage(),
// //             OutgoingPage(),
// //             MissedPage(),
// //           ],
// //         ),
// //       ),
// //     );
// //     //  Container(
// //     //   child: Center(
// //     //     child: Text('Home Screen'),
// //     //   ),
// //     // );
// //   }
// // }

// // class IncomingPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Center(
// //         child: Text(
// //           'Incoming Call',
// //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class OutgoingPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Center(
// //         child: Text(
// //           'Outgoing Call',
// //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class MissedPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Center(
// //         child: Text(
// //           'Missed Call',
// //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class ExploreScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Center(
// //         child: Text('Explore Screen'),
// //       ),
// //     );
// //   }
// // }

// // class ProfileScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Center(
// //         child: Text('Profile Screen'),
// //       ),
// //     );
// //   }
// // }

// //import 'package:demo1/Constant/color.dart';
// //import 'package:demo1/alpha.dart';
// import 'package:demo1/chat.dart';
// import 'package:demo1/login.dart';
// import 'package:demo1/message.dart';
// //import 'package:demo1/percent.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // Remove the debug banner
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.lightBlue,
//       ),
//       home: Login(),
//       //home: ChatDetailPage(),
//       //home: MyHomePage(),
//       //home: AlphabeticalScrollerWidegt()
//       //PercentIndicatorDemo()
//     );
//   }
// }

// // class HomePage extends StatefulWidget {
// //   const HomePage({Key? key}) : super(key: key);

// //   @override
// //   State<HomePage> createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   final _baseUrl = 'https://jsonplaceholder.typicode.com/posts';

// //   int _page = 0;

// //   final int _limit = 20;

// //   bool _isFirstLoadRunning = false;
// //   bool _hasNextPage = true;

// //   bool _isLoadMoreRunning = false;

// //   List _posts = [];

// //   void _loadMore() async {
// //     if (_hasNextPage == true &&
// //         _isFirstLoadRunning == false &&
// //         _isLoadMoreRunning == false &&
// //         _controller.position.extentAfter < 300) {
// //       setState(() {
// //         _isLoadMoreRunning = true; // Display a progress indicator at the bottom
// //       });

// //       _page += 1; // Increase _page by 1

// //       try {
// //         final res =
// //             await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"));

// //         final List fetchedPosts = json.decode(res.body);
// //         if (fetchedPosts.isNotEmpty) {
// //           setState(() {
// //             _posts.addAll(fetchedPosts);
// //           });
// //         } else {
// //           setState(() {
// //             _hasNextPage = false;
// //           });
// //         }
// //       } catch (err) {
// //         if (kDebugMode) {
// //           print('Something went wrong!');
// //         }
// //       }

// //       setState(() {
// //         _isLoadMoreRunning = false;
// //       });
// //     }
// //   }

// //   void _firstLoad() async {
// //     setState(() {
// //       _isFirstLoadRunning = true;
// //     });

// //     try {
// //       final res =
// //           await http.get(Uri.parse("$_baseUrl?_page=$_page&_limit=$_limit"));
// //       setState(() {
// //         _posts = json.decode(res.body);
// //       });
// //     } catch (err) {
// //       if (kDebugMode) {
// //         print('Something went wrong');
// //       }
// //     }

// //     setState(() {
// //       _isFirstLoadRunning = false;
// //     });
// //   }

// //   late ScrollController _controller;
// //   @override
// //   void initState() {
// //     super.initState();
// //     _firstLoad();
// //     _controller = ScrollController()..addListener(_loadMore);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Blue,
// //           title: const Text(
// //             'Your news',
// //             style: TextStyle(color: Colors.white),
// //           ),
// //         ),
// //         body: _isFirstLoadRunning
// //             ? const Center(
// //                 child: CircularProgressIndicator(),
// //               )
// //             : Column(
// //                 children: [
// //                   Expanded(
// //                     child: ListView.builder(
// //                       itemCount: _posts.length,
// //                       controller: _controller,
// //                       itemBuilder: (_, index) => Card(
// //                         margin: const EdgeInsets.symmetric(
// //                             vertical: 8, horizontal: 10),
// //                         child: ListTile(
// //                           title: Text(_posts[index]['title']),
// //                           subtitle: Text(_posts[index]['body']),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                   if (_isLoadMoreRunning == true)
// //                     const Padding(
// //                       padding: EdgeInsets.only(top: 10, bottom: 40),
// //                       child: Center(
// //                         child: CircularProgressIndicator(),
// //                       ),
// //                     ),
// //                   if (_hasNextPage == false)
// //                     Container(
// //                       padding: const EdgeInsets.only(top: 30, bottom: 40),
// //                       color: Colors.amber,
// //                       child: const Center(
// //                         child: Text('You have fetched all of the content'),
// //                       ),
// //                     ),
// //                 ],
// //               ));
// //   }
// // }

// // import 'package:demo1/Constant/theme.dart';
// // import 'package:demo1/mode.dart';
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Dark Mode',
// //       theme: MyAppThemes.lightTheme,
// //       darkTheme: MyAppThemes.darkTheme,
// //       themeMode: ThemeMode.system, // Default mode
// //       home: MyHomePage(
// //         title: 'Flutter Dark Mode',
// //       ),
// //     );
// //   }
// // }

// // import 'package:demo1/Constant/mode.dart';
// // import 'package:demo1/mode.dart';
// // import 'package:flutter/material.dart';

// // import 'package:provider/provider.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider(
// //         create: (_) => TheamModal(),
// //         child: Consumer(
// //           builder: (context, TheamModal theamModal, child) {
// //             return MaterialApp(
// //               debugShowCheckedModeBanner: false,
// //               title: "Example For Dark and Light Mode",
// //               theme: theamModal.isDark ? ThemeData.dark() : ThemeData.light(),
// //               home: HomePage(),
// //             );
// //           },
// //         ));
// //   }
// // }

// // import 'package:demo1/Constant/color.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// // import 'package:rating_summary/rating_summary.dart';
// // //import 'package:rating_dialog/rating_dialog.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       // Hide the debug banner
// //       debugShowCheckedModeBanner: false,
// //       title: 'Rating Bar app',
// //       home: HomePage(),
// //     );
// //   }
// // }

// // class HomePage extends StatefulWidget {
// //   const HomePage({Key? key}) : super(key: key);

// //   @override
// //   State<HomePage> createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   // The rating value
// //   double? _ratingValue;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Blue,
// //           title: const Text('Rating Bar app'),
// //         ),
// //         body: Padding(
// //           padding: const EdgeInsets.all(25),
// //           child: Center(
// //             child: Column(
// //               children: [
// //                 const Text(
// //                   'Rate our product?',
// //                   style: TextStyle(fontSize: 24),
// //                 ),
// //                 const SizedBox(height: 25),
// //                 // implement the rating bar
// //                 RatingBar(
// //                     initialRating: 0,
// //                     direction: Axis.horizontal,
// //                     allowHalfRating: true,
// //                     itemCount: 5,
// //                     ratingWidget: RatingWidget(
// //                         full: const Icon(Icons.star, color: Colors.orange),
// //                         half: const Icon(
// //                           Icons.star_half,
// //                           color: Colors.orange,
// //                         ),
// //                         empty: const Icon(
// //                           Icons.star_outline,
// //                           color: Colors.orange,
// //                         )),
// //                     onRatingUpdate: (value) {
// //                       setState(() {
// //                         _ratingValue = value;
// //                       });
// //                     }),
// //                 const SizedBox(height: 25),
// //                 // Display the rate in number
// //                 Container(
// //                   width: 200,
// //                   height: 200,
// //                   decoration: const BoxDecoration(
// //                       color: Colors.teal, shape: BoxShape.circle),
// //                   alignment: Alignment.center,
// //                   child: Text(
// //                     _ratingValue != null ? _ratingValue.toString() : 'Rate me!',
// //                     style: const TextStyle(color: Colors.white, fontSize: 30),
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   height: 30,
// //                 ),

// //                 RatingSummary(
// //                   counter: 13,
// //                   average: 3.846,
// //                   counterFiveStars: 5,
// //                   counterFourStars: 4,
// //                   counterThreeStars: 2,
// //                   counterTwoStars: 1,
// //                   counterOneStars: 1,
// //                 ),

// //                 SizedBox(
// //                   height: 30,
// //                 ),
// //                 Center(
// //                   child: ElevatedButton(
// //                     onPressed: () {
// //                       showDialog(
// //                         context: context,
// //                         builder: (BuildContext context) => CupertinoAlertDialog(
// //                           title: const Padding(
// //                             padding: EdgeInsets.only(bottom: 8.0),
// //                             child: Text(
// //                               'Rating',
// //                               style: TextStyle(fontSize: 16),
// //                             ),
// //                           ),
// //                           content: Column(
// //                             children: [
// //                               RatingBar.builder(
// //                                 initialRating: 5,
// //                                 minRating: 1,
// //                                 itemSize: 20,
// //                                 direction: Axis.horizontal,
// //                                 itemPadding:
// //                                     const EdgeInsets.symmetric(horizontal: 2.0),
// //                                 itemBuilder: (context, _) => const Icon(
// //                                   Icons.star,
// //                                   color: Colors.amber,
// //                                 ),
// //                                 onRatingUpdate: (rating) {},
// //                               ),
// //                             ],
// //                           ),
// //                           actions: [
// //                             CupertinoDialogAction(
// //                               child: const Text(
// //                                 "Cancel",
// //                               ),
// //                               onPressed: () {
// //                                 Navigator.of(context).pop();
// //                               },
// //                             ),
// //                             CupertinoDialogAction(
// //                               child: const Text('Submit'),
// //                               onPressed: () {
// //                                 Navigator.of(context).pop();
// //                               },
// //                             )
// //                           ],
// //                         ),
// //                       );
// //                     },
// //                     child: const Text("SHOW DIALOG"),
// //                   ),
// //                 ),

// //                 // Text(
// //                 //   "Library Second:  'Rating_Dialog ' ",
// //                 //   style: TextStyle(fontSize: 20, color: Colors.deepOrange),
// //                 // ),
// //                 // TextButton(
// //                 //   onPressed: () {
// //                 //     show();
// //                 //   },
// //                 //   child: Text("Open Flutter Rating Dialog Box"),
// //                 // )
// //               ],
// //             ),
// //           ),
// //         ));
// //   }
// // }

// //   void show() {
// //     RatingDialog(
// //       initialRating: 1.0,
// //       // your app's name?
// //       title: Text(
// //         'Rating Dialog',
// //         textAlign: TextAlign.center,
// //         style: const TextStyle(
// //           fontSize: 25,
// //           fontWeight: FontWeight.bold,
// //         ),
// //       ),
// //       // encourage your user to leave a high rating?
// //       message: Text(
// //         'Tap a star to set your rating. Add more description here if you want.',
// //         textAlign: TextAlign.center,
// //         style: const TextStyle(fontSize: 15),
// //       ),
// //       // your app's logo?
// //       image: const FlutterLogo(size: 100),
// //       submitButtonText: 'Submit',
// //       commentHint: 'Set your custom comment hint',
// //       onCancelled: () => print('cancelled'),
// //       onSubmitted: (response) {
// //         print('rating: ${response.rating}, comment: ${response.comment}');

// //         // TODO: add your own logic
// //         if (response.rating < 3.0) {
// //           // send their comments to your email or anywhere you wish
// //           // ask the user to contact you instead of leaving a bad review
// //         } else {}
// //       },
// //     );
// //     // showDialog(
// //     //     context: context,
// //     //     barrierDismissible: true, // set to false if you want to force a rating
// //     //     builder: (context) {
// //     //       return RatingDialog(
// //     //         icon: const Icon(
// //     //           Icons.star,
// //     //           size: 100,
// //     //           color: Colors.blue,
// //     //         ), // set your own image/icon widget
// //     //         title: "Flutter Rating Dialog",
// //     //         description: "Tap a star to give your rating.",
// //     //         submitButtonText: "SUBMIT",
// //     //         alternativeButton: "Contact us instead?", // optional
// //     //         positiveComment: "We are so happy to hear 😍", // optional
// //     //         negativeComment: "We're sad to hear 😭", // optional
// //     //         accentColor: Colors.blue, // optional
// //     //         onSubmitted: (int rating) {
// //     //           print("onSubmitPressed: rating = $rating");
// //     //           // TODO: open the app's page on Google Play / Apple App Store
// //     //         },
// //     //         onAlternativePressed: () {
// //     //           print("onAlternativePressed: do something");
// //     //           // TODO: maybe you want the user to contact you instead of rating a bad review
// //     //         }, onSubmitted: (RatingDialogResponse ) {  },
// //     //       );
// //     //     });
// //   }
// // }

// import 'dart:developer';
// import 'package:fancy_cart/fancy_cart.dart';
// import 'package:flutter/material.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // initialize fancy cart
//   initializeFancyCart(
//     child: const MyApp(),
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final _navKey = GlobalKey<NavigatorState>();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         navigatorKey: _navKey,

//         /// Example of using Fancy Cart
//         home: const MyPage());
//   }
// }

// class MyPage extends StatefulWidget {
//   const MyPage({Key? key}) : super(key: key);

//   @override
//   State<MyPage> createState() => _MyPageState();
// }

// class _MyPageState extends State<MyPage> {
//   int time = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // ----------------- Add To Cart ----------------- //
//           AddToCartButton(
//             actionAfterAdding: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const MyCart()));
//               setState(() {
//                 time = DateTime.now().millisecondsSinceEpoch;
//               });
//             },
//             cartModel: CartItem(id: time, name: 'Test', price: 100, image: ""),
//             child: Container(
//               height: 50,
//               margin: const EdgeInsets.all(10),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: const Center(
//                 child: Text(
//                   "Add to cart",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyCart extends StatelessWidget {
//   const MyCart({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Test Cart'),
//           actions: [
//             // ----------------- Clear Cart ----------------- //
//             /// clear cart button with action after delete
//             ClearCartButton(
//               child: const Icon(Icons.delete),
//               actionAfterDelete: () {
//                 log("cart deleted", name: "cart deleted");
//               },
//             ),

//             // ----------------- Total Items in Cart ----------------- //
//             /// total items in cart, with option to include quantity or not (default is true)
//             TotalItemsCartWidget(totalItemsBuilder: (totalItems) {
//               return Text(totalItems.toString());
//             })
//           ],
//         ),
//         // ----------------- Cart Widget ----------------- //
//         /// cart widget with custom builder for cart list which contains controller to add, remove, clear cart
//         body: CartWidget(cartBuilder: (controller) {
//           return Column(
//             children: [
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: controller.cartList.length,
//                   itemBuilder: (context, index) {
//                     final cartItem = controller.cartList[index];
//                     return ListTile(
//                       title: Text(cartItem.name),
//                       subtitle: Text(controller
//                           .getPriceForItem(cartItem, updatePrice: true)
//                           .toString()),
//                       trailing: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           IconButton(
//                             onPressed: () {
//                               controller.incrementItemQuantity(cartItem);
//                             },
//                             icon: const Icon(Icons.add),
//                           ),
//                           Text(cartItem.quantity.toString()),
//                           IconButton(
//                             onPressed: () {
//                               controller.decrementItemQuantity(cartItem);
//                             },
//                             icon: const Icon(Icons.remove),
//                           ),
//                         ],
//                       ),
//                       leading: IconButton(
//                         icon: const Icon(Icons.remove),
//                         onPressed: () {
//                           controller.removeItem(cartItem);
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               // ----------------- Total Price in Cart ----------------- //
//               Text("Total Price : ${controller.getTotalPrice()}"),
//             ],
//           );
//         }));
//   }
// }

// import 'dart:developer';
// import 'package:fancy_cart/fancy_cart.dart';
// import 'package:flutter/material.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // initialize fancy cart
//   initializeFancyCart(
//     child: const MyApp(),
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,

//         /// Example of using Fancy Cart
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Test Cart'),
//             actions: [
//               // ----------------- Clear Cart ----------------- //
//               /// clear cart button with action after delete
//               ClearCartButton(
//                 child: const Icon(Icons.delete),
//                 actionAfterDelete: () {
//                   log("cart deleted", name: "cart deleted");
//                 },
//               ),

//               // ----------------- Total Items in Cart ----------------- //
//               /// total items in cart, with option to include quantity or not (default is true)
//               TotalItemsCartWidget(totalItemsBuilder: (totalItems) {
//                 return Text(totalItems.toString());
//               })
//             ],
//           ),

//           // ----------------- Cart Widget ----------------- //
//           /// cart widget with custom builder for cart list which contains controller to add, remove, clear cart
//           body: CartWidget(
//             cartBuilder: (controller) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 100),
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: ListView.builder(
//                         itemCount: controller.cartList.length,
//                         itemBuilder: (context, index) {
//                           final cartItem = controller.cartList[index];
//                           return ListTile(
//                             title: Text(cartItem.name),
//                             subtitle: Text(controller
//                                 .getPriceForItem(cartItem, updatePrice: true)
//                                 .toString()),
//                             trailing: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 IconButton(
//                                   onPressed: () {
//                                     controller.decrementItemQuantity(cartItem);
//                                   },
//                                   icon: const Icon(Icons.remove),
//                                 ),
//                                 Text(cartItem.quantity.toString()),
//                                 IconButton(
//                                   onPressed: () {
//                                     controller.incrementItemQuantity(cartItem);
//                                   },
//                                   icon: const Icon(Icons.add),
//                                 ),
//                               ],
//                             ),
//                             leading: Image.asset(cartItem.image),
//                             // leading: IconButton(
//                             //   icon: const Icon(Icons.remove),
//                             //   onPressed: () {
//                             //     controller.removeItem(cartItem);
//                             //   },
//                             // ),
//                           );
//                         },
//                       ),
//                     ),

//                     // ----------------- add to cart button ----------------- //
//                     /// add to cart button with action after add and model to add
//                     AddToCartButton(
//                       actionAfterAdding: () {
//                         log("item added", name: "item added");
//                       },
//                       cartModel: CartItem(
//                           id: DateTime.now().millisecondsSinceEpoch,
//                           name: 'Cherry cake',
//                           price: 100,
//                           image: "assets/images/cake.jpg"),
//                       child: Container(
//                         height: 50,
//                         margin: const EdgeInsets.all(10),
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           color: Colors.blue,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: const Center(
//                           child: Text(
//                             "Add to cart",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ),
//                     // ----------------- Total price ----------------- //
//                     /// total price of cart
//                     Text("Total Price : ${controller.getTotalPrice()}"),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ));
//   }
// }

import 'package:demo1/audio.dart';
import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';
// don't forget this line
import 'package:webview_flutter/webview_flutter.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      //title: "CrackerWorld",
      home: Player(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // Create a webview controller
  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // print the loading progress to the console
          // you can use this value to show a progress bar if you want
          debugPrint("Loading: $progress%");
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse("https://www.youtube.com/"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Webview '),
      ),
      body: SafeArea(
          //width: double.infinity,
          // the most important part of this example
          child: WebViewWidget(
        controller: _controller,
      )),
    );
  }
}
