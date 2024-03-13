//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicatorDemo extends StatefulWidget {
  @override
  _PercentIndicatorDemoState createState() => _PercentIndicatorDemoState();
}

class _PercentIndicatorDemoState extends State<PercentIndicatorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Linear Percent Indicators"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                center: Text(
                  "50.0%",
                  style: new TextStyle(fontSize: 12.0),
                ),
                trailing: Icon(Icons.mood),
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: 170.0,
                animation: true,
                animationDuration: 1000,
                lineHeight: 20.0,
                leading: new Text("left content"),
                trailing: new Text("right content"),
                percent: 0.2,
                center: Text("20.0%"),
                linearStrokeCap: LinearStrokeCap.butt,
                progressColor: Colors.red,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2000,
                percent: 0.9,
                center: Text("90.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.greenAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.8,
                center: Text("80.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  new LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 8.0,
                    percent: 0.2,
                    progressColor: Colors.red,
                  ),
                  new LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 8.0,
                    percent: 0.5,
                    progressColor: Colors.orange,
                  ),
                  new LinearPercentIndicator(
                    width: 100.0,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: Colors.blue,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text("Circular Percent Indicators"),
//       ),
//       body: Center(
//         child: ListView(children: <Widget>[
//           new CircularPercentIndicator(
//             radius: 65.0,
//             lineWidth: 10.0,
//             percent: 0.8,
//             header: new Text("Icon header"),
//             center: new Icon(
//               Icons.person_pin,
//               size: 50.0,
//               color: Colors.blue,
//             ),
//             backgroundColor: Colors.grey,
//             progressColor: Colors.blue,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           new CircularPercentIndicator(
//             radius: 65.0,
//             animation: true,
//             animationDuration: 1200,
//             lineWidth: 15.0,
//             percent: 0.4,
//             center: new Text(
//               "40 hours",
//               style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//             ),
//             circularStrokeCap: CircularStrokeCap.butt,
//             backgroundColor: Colors.yellow,
//             progressColor: Colors.red,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           new CircularPercentIndicator(
//             radius: 65.0,
//             lineWidth: 13.0,
//             animation: true,
//             percent: 0.7,
//             center: new Text(
//               "70.0%",
//               style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
//             ),
//             footer: new Text(
//               "Sales this week",
//               style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
//             ),
//             circularStrokeCap: CircularStrokeCap.round,
//             progressColor: Colors.purple,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: EdgeInsets.all(15.0),
//             child: new CircularPercentIndicator(
//               radius: 60.0,
//               lineWidth: 5.0,
//               percent: 1.0,
//               center: new Text("100%"),
//               progressColor: Colors.green,
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//             padding: EdgeInsets.all(10.0),
//             child: new Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 new CircularPercentIndicator(
//                   radius: 25.0,
//                   lineWidth: 4.0,
//                   percent: 0.10,
//                   center: new Text("10%"),
//                   progressColor: Colors.red,
//                 ),
//                 new Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                 ),
//                 new CircularPercentIndicator(
//                   radius: 25.0,
//                   lineWidth: 4.0,
//                   percent: 0.30,
//                   center: new Text("30%"),
//                   progressColor: Colors.orange,
//                 ),
//                 new Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                 ),
//                 new CircularPercentIndicator(
//                   radius: 25.0,
//                   lineWidth: 4.0,
//                   percent: 0.60,
//                   center: new Text("60%"),
//                   progressColor: Colors.yellow,
//                 ),
//                 new Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 10),
//                 ),
//                 new CircularPercentIndicator(
//                   radius: 25.0,
//                   lineWidth: 4.0,
//                   percent: 0.90,
//                   center: new Text("90%"),
//                   progressColor: Colors.green,
//                 )
//               ],
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }
