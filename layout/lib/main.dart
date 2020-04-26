import 'package:flutter/material.dart';
// This is the assignment for understanding layouts
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100,
                color: Colors.red,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.yellow,
                      margin: EdgeInsets.symmetric(vertical:0.0,horizontal: 45.0),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.green,
                      margin: EdgeInsets.symmetric(vertical: 0.0,horizontal: 45.0),
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
