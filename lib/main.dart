import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void playSound(i) {
      final player = AudioCache();
      print(i);
      player.play('note${i}.wav');
    }

    Expanded blockKey(color, i) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () => {playSound(i)},
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('XyloPhone')),
        ),
        body: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            blockKey(Colors.green, 1),
            blockKey(Colors.brown, 2),
            blockKey(Colors.yellow, 3),
            blockKey(Colors.teal, 4),
            blockKey(Colors.green, 5),
            blockKey(Colors.blueAccent, 6),
            blockKey(Colors.deepPurple, 7)
          ],
        )),
      ),
    );
  }
}
