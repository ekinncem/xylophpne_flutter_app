import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('sounds/note1.wav'));
                  },
                  child: const Text('Note 1', style: TextStyle(fontSize: 23),),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('sounds/note2.wav'));
                  },
                  child: const Text('Note 2', style: TextStyle(fontSize: 23),),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('sounds/note3.wav'));
                  },
                  child: const Text('Note 3', style: TextStyle(fontSize: 23),),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('sounds/note4.wav'));
                  },
                  child: const Text('Note 4', style: TextStyle(fontSize: 23),),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('sounds/note5.wav'));
                  },
                  child: const Text('Note 5', style: TextStyle(fontSize: 23),),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('sounds/note6.wav'));
                  },
                  child: const Text('Note 6', style: TextStyle(fontSize: 23),),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.play(AssetSource('sounds/note7.wav'));
                  },
                  child: const Text('Note 7', style: TextStyle(fontSize: 23),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
