import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(64, 148, 64, 1.0),
        appBar: AppBar(
          title: const Text('Dices'),
          backgroundColor: Color.fromRGBO(65, 162, 65, 1.0),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  // bool visible = true;

  void changeDiceFace() {
    // for (int i = 0; i < 10; i++) {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      // visible = !visible;
    });
    //   sleep(Duration(milliseconds: 100));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeDiceFace();
      },
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                // color: Colors.red,
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                  // color: Colors.red,
                ),
                // onPressed: () {
                //   changeDiceFace();
                // },
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.red,
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
                // onPressed: () {
                //   changeDiceFace();
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
