import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(xylophoneApp());

void playSound(int soundbar) {
  final player = AudioCache();
  player.play('note$soundbar.wav');
}

Expanded playco({int num, Color magic}) {
  return Expanded(
    child: FlatButton(
      color: magic,
      onPressed: () {
        playSound(num);
      },
    ),
  );
}

class xylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playco(num: 1, magic: Colors.greenAccent),
              playco(num: 2, magic: Colors.indigo),
              playco(num: 3, magic: Colors.blue),
              playco(num: 4, magic: Colors.green),
              playco(num: 5, magic: Colors.yellow),
              playco(num: 6, magic: Colors.orange),
              playco(num: 7, magic: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
