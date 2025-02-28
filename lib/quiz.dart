import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';

import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key}); // constructor

  @override
  State<Quiz> createState() {
    // flutter understands that _QuizState is responsible for UI
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget?
  // activeScreen; // question mark to say that activeScreen (custom widget) can be null

  var activeScreen = 'Start-Screen';

  // you dont need init if you are using var string to assign the states
  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = 'Start-Screen';
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'Question-Screen';
    });
  }

  @override
  Widget build(ctx) {
    final screenChoice =
        activeScreen == 'Start-Screen'
            ? StartScreen(switchScreen)
            : QuestionsScreen();
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 23, 116, 40),
                const Color.fromARGB(255, 100, 125, 85),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenChoice,
        ),
      ),
    );
  }
}
