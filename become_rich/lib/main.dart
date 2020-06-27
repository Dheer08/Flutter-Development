import 'package:flutter/material.dart';

// The main function is the starting point for all apps
void main() {
  runApp(MyApp());
}

// stateless widget makes hot reload possible
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Center(
            child: Text("I am Rich"),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/diamond.png"),
          ),
        ),
      ),
    );
  }
}
