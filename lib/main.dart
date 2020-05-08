import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: Text('Ask me Anything'),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body: AskAnything(),
        ),
      ),
    );

class AskAnything extends StatefulWidget {
  @override
  _AskAnythingState createState() => _AskAnythingState();
}

class _AskAnythingState extends State<AskAnything> {
  void myRandom() {
    num = Random().nextInt(5) + 1;
  }

  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset('images/ball$num.png'),
          onPressed: () {
            setState(() {
              myRandom();
            });
          },
        ),
      ),
    );
  }
}
