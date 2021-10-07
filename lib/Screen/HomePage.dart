import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double finalResult = 0;
  String firstName = "";
  int index = 0;
  bool isPressed = false;
  String secondName = "";
  List text = [
    "A friend is someone who knows all about you and still loves you.",
    "It is better to be hated for what you are than to be loved for what you are not.",
    "As he read, I fell in love the way you fall asleep: slowly, and then all at once.",
    "Love all, trust a few, do wrong to none.",
    "You love me. Real or not real? I tell him, 'Real.",
    "I'm in love with you,' he said quietly"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround, 
          children: [
            //image
            Image(
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              image: AssetImage("images/pic$index.png"),
            ),

            //first textformfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    labelText: "Enter You'r Name"),
                onChanged: (value) {
                  firstName = value;
                },
              ),
            ),

            //secondTextformfield
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    labelText: "Enter Paterner Name"),
                onChanged: (value) {
                  secondName = value;
                },
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(8.0)),
              child: MaterialButton(
                  textColor: Colors.white,
                  child: isPressed ? Text("Try Agin") : Text("Calculate"),
                  onPressed: () {
                    isPressed = true;
                    setState(() {
                      Random rand = Random();
                      double value = rand.nextDouble();
                      Random random = Random();
                      int value2 = random.nextInt(30) + 70;
                      finalResult = value2 + value;

                      if (index == 5) {
                        index = 0;
                      } else {
                        index++;
                      }
                    });
                  }),
            ),

            finalResult == 0
                ? Text("")
                : Text("${finalResult.toStringAsFixed(2)} %"),

            finalResult == 0 ? Text("") : Text(text[index]),
          ],
        ),
      ),
    );
  }
}
