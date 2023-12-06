// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask_ME',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ASK ME ',
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        backgroundColor: Colors.lightBlue,
        body: AskMePage(),
      ),
    );
  }
}

class AskMePage extends StatefulWidget {
  const AskMePage({super.key});

  @override
  State<AskMePage> createState() => _AskMePageState();
}

class _AskMePageState extends State<AskMePage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: double.infinity,
      child: MaterialButton(
        onPressed: () {
          setState(() {
            changeImage();
          });
        },
        child: Image.asset('images/ball$number.png'),
      ),
    );
  }

  void changeImage() {
    number = Random().nextInt(5) + 1;
  }
}
