import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void play(int num)
  {   
    final player = AudioCache();
    player.play('sound$num.wav');
  }

  Expanded bottom(Color colour , int num)
  {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          color: colour,
          onPressed: (){
            play(num);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Xylophone')),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              bottom(Colors.red , 1),
              bottom(Colors.orange , 2),
              bottom(Colors.yellow , 3),
              bottom(Colors.green , 4),
              bottom(Colors.blue , 5),
              bottom(Colors.indigo , 6),
              bottom(Colors.purple , 7),
            ],
          ),
        ),
      ),
    );
  }
}