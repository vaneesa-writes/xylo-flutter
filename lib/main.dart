import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildButton(Color color, int soundNumber) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: color, // background
        ),
        child: null,
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
            children: [
              buildButton(Colors.redAccent, 1),
              buildButton(Colors.orangeAccent, 2),
              buildButton(Colors.yellowAccent, 3),
              buildButton(Colors.lightGreenAccent, 4),
              buildButton(Colors.tealAccent, 5),
              buildButton(Colors.lightBlueAccent, 6),
              buildButton(Colors.purpleAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
