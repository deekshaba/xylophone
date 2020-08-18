import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() { runApp(XylophoneApp());}

class XylophoneApp extends StatelessWidget {

  void playsound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildkey({int notes, Color color}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(notes);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,

          title: Text('XYLOPHONE'),

        ),
        body: SafeArea(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(notes:1,color: Colors.red),
              buildkey(notes:2,color: Colors.orange),
              buildkey(notes:3,color: Colors.yellow),
              buildkey(notes:4,color: Colors.green),
              buildkey(notes:5,color: Colors.teal),
              buildkey(notes:6,color: Colors.blue),
              buildkey(notes:7,color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
