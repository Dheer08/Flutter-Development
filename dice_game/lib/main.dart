import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void change_dice_face()
  {
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("Roll Your Dice Anywhere"),
          ),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                  child:FlatButton(
                    child: Image.asset("images/dice$leftDiceNumber.png"),
                    onPressed: (){
                      change_dice_face();
                    },
                  ),
              ),
              Expanded(
                  child: FlatButton(
                    child: Image.asset("images/dice$rightDiceNumber.png"),
                    onPressed: (){
                      change_dice_face();
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
