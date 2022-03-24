import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.amberAccent,
    Colors.green,
    Colors.lightBlueAccent,
    Colors.blue,
    Colors.deepPurple
  ];

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];

  void playAudio(int audioNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play("note$audioNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var i = 0; i < colors.length; i++)
                  Expanded(
                    child: Container(
                      color: colors[i],
                      child: TextButton(
                        onPressed: () {
                          playAudio(i + 1);
                        },
                        child: Text(
                          "${numbers[i]}",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
