import 'package:adv_basics/start_screen.dart';

import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key}); // constructor

  @override
  State<Quiz> createState() {
    // creating a state from the _QuizState
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(ctx) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 23, 116, 40),
                const Color.fromARGB(255, 91, 224, 120),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
