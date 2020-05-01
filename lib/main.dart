import 'package:flutter/material.dart';
import 'dart:math';

// define function to run StatelessWidget called BallPage

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text("I'm a magic ball... ask me anything"),
          backgroundColor: Colors.black45,
        ),
        body: Ball(),
      ),
    );
  }
}

// define StatefulWidget called Ball

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

// define state object

class _BallState extends State<Ball> {
  int ball_number = 1;

  // define function

  void random_number() {
    setState(() {
      ball_number = Random().nextInt(5) + 1;
    });
  }

  void long_press() {
    setState(() {
      ball_number = 6;
    });
  }

  @override

  // define button

  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FlatButton(
          onPressed: () {
            random_number();
          },
          onLongPress: () {
            long_press();
          },
          child: Image.asset('assets/images/ball$ball_number.png'),
        ),
      ),
    );
  }
}
