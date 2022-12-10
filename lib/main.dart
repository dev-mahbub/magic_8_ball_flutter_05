import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(magicBall());
}

class magicBall extends StatefulWidget {
  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int askMe = 1;

  void askMeChange() {
    setState(() {
      askMe = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Center(
              child: Text("Ask Me Anything"),
            ),
          ),
          body: Center(
            child: TextButton(
              onPressed: () {
                askMeChange();
              },
              child: Image.asset('images/ball$askMe.png'),
            ),
          ),
        ),
      ),
    );
  }
}
