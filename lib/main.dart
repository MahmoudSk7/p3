import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Game(),
    );
  }
}

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  int userChoice = 0 ;
  int systemChoice  = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rock Paper Scissors"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed : () {
                  setState(() {
                    userChoice = Random().nextInt(3);
                    systemChoice = Random().nextInt(3);
                  });
                },
                child: Image.asset("images/c$userChoice.png"),
              ),
              TextButton(
                onPressed : () {},
                child: Image.asset("images/p$systemChoice.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
