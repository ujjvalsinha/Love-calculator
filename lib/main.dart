import 'package:flutter/material.dart';
import 'package:love_calculator/Screen/HomePage.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Love Calculator",
      home: HomePage(),
      
    );
  }
}



// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var flag = 0;
//   var lv1 = TextEditingController();
//   var lv2 = TextEditingController();
//   var a = "";
//   pressed() {
//     if (lv1.text.isEmpty || lv2.text.isEmpty) {
//       return;
//     } else if (lv1.text.contains(RegExp(r'[\d]')) ||
//         lv2.text.contains(RegExp(r'[\d]'))) {
//       return;
//     } else if (flag == 1) {
//       return;
//     } else {
//       setState(() {
//         Random rand = Random();
//         double value = rand.nextDouble();
//         Random random = Random();
//         int value2 = random.nextInt(30) + 70;
//         double fin = value2 + value;
//         a = fin.toStringAsFixed(2) + "%";
//         flag = 1;
//       });
//     }
//   }

//   pressed2() {
//     setState(() {
//       lv1.text = "";
//       lv2.text = "";
//       flag = 0;
//       a = "";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.red[900],
//         body: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 "♡♡ LOVE APP ♡♡",
//                 style: TextStyle(
//                     fontSize: 38,
//                     color: Colors.white,
//                     fontStyle: FontStyle.italic),
//               ),
//               Image.asset('images/pic4.jpg', height: 300, width: 700),
//               Container(
//                 margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
//                 child: TextField(
//                   controller: lv1,
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white,
//                       hintText: "  ♥♥♥♥ Enter Your Name ♥♥♥♥",
//                       hintStyle: TextStyle(fontSize: 20),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25))),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(20),
//                 child: TextField(
//                   controller: lv2,
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white,
//                       hintText: "   ♥♥ Enter Your Partner's Name  ♥♥",
//                       hintStyle: TextStyle(fontSize: 20),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(25))),
//                 ),
//               ),
//               Container(
//                 child: Text(a,
//                     style: TextStyle(color: Colors.white, fontSize: 36)),
//               ),
//               Container(
//                 margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
//                 child: MaterialButton(
//                   color: Colors.white,
//                   height: 40,
//                   minWidth: 150,
//                   child: Text(
//                     "Calculate Love",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   onPressed: () {
//                     pressed();
//                   },
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
//                 child: MaterialButton(
//                   color: Colors.white,
//                   height: 40,
//                   minWidth: 150,
//                   child: Text(
//                     "Clear ",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   onPressed: () {
//                     pressed2();
//                   },
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
