import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage("images/Rakshith.jpeg"),
                width: 300.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}