import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("Dice"),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber  =  1;
  int rightDiceNumber = 1;

  void ChangeDiceFace(){
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
      leftDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                ChangeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
              child: FlatButton(
                onPressed:(){
                  ChangeDiceFace();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
          ),
        ],
      ),
    );
  }
}
