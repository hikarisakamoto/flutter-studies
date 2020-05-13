import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playIdiophone(int number) {
    AudioCache().play('note$number.wav');
  }

  Expanded getIdiophone(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playIdiophone(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              getIdiophone(Colors.red, 1),
              getIdiophone(Colors.orange, 2),
              getIdiophone(Colors.yellow, 3),
              getIdiophone(Colors.green, 4),
              getIdiophone(Colors.teal, 5),
              getIdiophone(Colors.blue, 6),
              getIdiophone(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
