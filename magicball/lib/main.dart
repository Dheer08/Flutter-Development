import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  BallNumber = Random().nextInt(5)+1;
                });
              },
              child: Image(
                image: AssetImage("images/ball$BallNumber.png"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}
