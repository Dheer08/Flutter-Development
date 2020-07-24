import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final player = AudioCache();
  void playsound(int note)
  {
    final player  = AudioCache();
    player.play('note$note.wav');
  }
  Expanded BuildKey({Color color,int num})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(color:Colors.red,num:1),
              BuildKey(color:Colors.green,num:2),
              BuildKey(color:Colors.blueAccent,num:3),
              BuildKey(color:Colors.orange,num:4),
              BuildKey(color:Colors.purple,num:5),
              BuildKey(color:Colors.yellow,num:6),
              BuildKey(color:Colors.pink,num:7),
            ],
          ),
      ),
    ),
    );
  }
}
