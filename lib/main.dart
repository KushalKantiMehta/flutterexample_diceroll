import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;

  int rightDiceNumber=6;

  void diceroll(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('Dice Roll'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: diceroll,
                  icon: Image.asset('images/dice$leftDiceNumber.png'),
                  iconSize: 150,
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  onPressed: diceroll,
                  icon: Image.asset('images/dice$rightDiceNumber.png'),
                  iconSize: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
