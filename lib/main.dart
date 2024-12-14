import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber,){
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$soundNumber.wav'));
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async {
                  playSound(1);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red, // Arka plan rengi kırmızı
                  foregroundColor: Colors.white, // Yazı rengi beyaz (kontrast için)
                ),
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () async {
                  playSound(2);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange, // Arka plan rengi kırmızı
                  foregroundColor: Colors.white, // Yazı rengi beyaz (kontrast için)
                ),
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () async {
                  playSound(3);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow, // Arka plan rengi kırmızı
                  foregroundColor: Colors.white, // Yazı rengi beyaz (kontrast için)
                ),
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () async {
                  playSound(4);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green, // Arka plan rengi kırmızı
                  foregroundColor: Colors.white, // Yazı rengi beyaz (kontrast için)
                ),
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () async {
                  playSound(5);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Arka plan rengi kırmızı
                  foregroundColor: Colors.white, // Yazı rengi beyaz (kontrast için)
                ),
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () async {
                  playSound(6);
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 59, 102), // Arka plan rengi kırmızı
                  foregroundColor: Colors.white, // Yazı rengi beyaz (kontrast için)
                ),
                child: Text('Click Me'),
              ),
              TextButton(
                onPressed: () async {
                  playSound(7);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Arka plan rengi kırmızı
                  foregroundColor: Colors.white, // Yazı rengi beyaz (kontrast için)
                ),
                child: Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
