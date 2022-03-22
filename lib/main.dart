import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> color = [Colors.blue, Colors.red, Colors.green, Colors.purple];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              for (var i in color)
                Container(
                  color: i,
                  width: double.infinity,
                  height: 150,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "${i}",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
