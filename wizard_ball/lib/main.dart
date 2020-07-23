import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(child: Text("Ask Me Anything")),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: FlatButton(
                child: Image.asset("images/ball$ball.png"),
              onPressed: (){
                  setState(() {
                    ball = Random().nextInt(5)+1;
                  });
              },
            )
        ),
      ),
    );
  }
}
