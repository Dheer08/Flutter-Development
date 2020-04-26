import 'package:flutter/material.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/puppy.jpg"),
              ),
              Text(
                  "My puppy",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
              ),
              Text(
                "SLEEPING AND SITTING",
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  color: Colors.teal[100],
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size:15.0,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      "+91 638 134 2088",
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child:ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 20.0,
                      color:Colors.teal[900],
                    ),
                    title: Text(
                      "122015097@sastra.ac.in",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro',
                        color: Colors.teal[900],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}