import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x)
  {
    final player = AudioCache();
    player.play('note$x.wav');
  }
  Expanded buildTile ({int x,Color color})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(x);
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildTile(x:1,color: Colors.red),
              buildTile(x:2,color: Colors.orange),
              buildTile(x:3,color: Colors.yellow),
              buildTile(x:4,color: Colors.green),
              buildTile(x:5,color: Colors.teal),
              buildTile(x:6,color: Colors.blue),
              buildTile(x:7,color: Colors.purple),
            ]
                ),
              ),
          ),
        );
  }
}
