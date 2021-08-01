import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Expanded playSound(int soundNoteNumber, Color color) {
    final player = AudioCache();
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play('note$soundNoteNumber.wav');
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
              playSound(1, Colors.blue[900]),
              playSound(2, Colors.indigo),
              playSound(3, Colors.blue),
              playSound(4, Colors.green),
              playSound(5, Colors.yellow),
              playSound(6, Colors.orange),
              playSound(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
