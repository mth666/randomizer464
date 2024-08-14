import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[600],
        appBar: AppBar(
          title: const Center(child: Text('Randomizer464')),
          backgroundColor: Colors.red,
        ),
        body: const RandomizerMainPage(),
      ),
    );
  }
}

class RandomizerMainPage extends StatefulWidget {
  const RandomizerMainPage({super.key});

  @override
  State<RandomizerMainPage> createState() => _RandomizerMainPageState();
}

class _RandomizerMainPageState extends State<RandomizerMainPage> {
  int leftRandomizer = 1;
  int rightRandomizer = 2;
  void actualRandomizer() {
    leftRandomizer = Random().nextInt(6) + 1;
    rightRandomizer = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  actualRandomizer();
                });
              },
              child: Image.asset('images/dice$leftRandomizer.png'),
            ),
          ),
          //SizedBox(width: 8),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  actualRandomizer();
                });
              },
              child: Image.asset('images/dice$rightRandomizer.png'),
            ),
          ),
        ],
      ),
    );
  }
}
