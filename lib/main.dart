import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
  }
  Expanded drawButton(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: Text('Click here to hear the sound'),
        onPressed: () {
          playSound(soundNumber);
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
            children: [
              drawButton(Colors.red, 1),
              drawButton(Colors.pink, 2),
              drawButton(Colors.purple, 3),
              drawButton(Colors.deepPurple, 4),
              drawButton(Colors.indigo, 5),
              drawButton(Colors.blue, 6),
              drawButton(Colors.lightBlue, 7),

            ],
          ),
        )
      ),
    );
  }
}
