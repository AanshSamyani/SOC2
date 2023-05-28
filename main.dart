import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/source.dart';

// Map audiodata{
//   'url' : 'https://drive.google.com/file/d/1_6h2Cq0dM1_-STCnfm3En7yXnXf_YOJx/view?usp=share_link';
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  AudioPlayer audioPlayer = AudioPlayer();

  InitAudio(){
    audioPlayer.play('https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4');
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: (){InitAudio();},
              child : Text('Play'),backgroundColor:Colors.blue),
            FloatingActionButton(
                onPressed: (){},
                child : Text('Pause'),backgroundColor:Colors.black),
            FloatingActionButton(
                onPressed: (){},
                child : Text('Stop'),backgroundColor:Colors.amber)
            ]
          ),
        ),
      );
  }
}