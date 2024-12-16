// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$soundNumber.wav'));
  }

  Expanded buildKey({required int soundNumber, required Color color, required String text}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
        ),
        child: Text(text, style: const TextStyle(fontSize: 25)),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildKey(soundNumber: 1, color: Colors.red, text: 'Do'),
              buildKey(soundNumber: 2, color: Colors.orange, text: 'Re'),
              buildKey(soundNumber: 3, color: Colors.yellow, text: 'Mi'),
              buildKey(soundNumber: 4, color: Colors.green, text: 'Fa'),
              buildKey(soundNumber: 5, color: Colors.blue, text: 'Sol'),
              buildKey(soundNumber: 6, color: Colors.indigo, text: 'La'),
              buildKey(soundNumber: 7, color: Colors.purple, text: 'Si'),
            ],
          ),
        ),
      ),
    );
  }
}
