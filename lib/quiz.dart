import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/results_screen.dart';
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

  List<String> selectedAnswers = []; // answers selected by the attendee

  // you dont need init if you are using var string to assign the states a.k.a the start screen
  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = 'Start-Screen';
  // }

  void switchScreen() {
    // function used inside on-pressed
    setState(() {
      selectedAnswers = [];
      activeScreen = 'Question-Screen';
    });
  }

  void chooseAnswer(String ans) {
    selectedAnswers.add(ans);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'Results-Screen';
      });
    }
  }

  @override
  Widget build(ctx) {
    Widget screenChoice =
        activeScreen == 'Start-Screen'
            ? StartScreen(switchScreen)
            : QuestionsScreen(
              onSelectAnswer: chooseAnswer,
            ); // passing function as a parameter
    if (activeScreen == 'Results-Screen') {
      screenChoice = ResultsScreen(chosenAnswers: selectedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 5, 88, 34),
                const Color.fromARGB(255, 154, 159, 23),
                const Color.fromARGB(255, 254, 232, 1),
                const Color.fromARGB(255, 58, 196, 182),
              ],

              // [
              //   const Color.fromARGB(255, 255, 42, 109),
              //   const Color.fromARGB(255, 209, 247, 255),
              //   const Color.fromARGB(255, 5, 217, 232),
              //   const Color.fromARGB(255, 0, 86, 120),
              //   const Color.fromARGB(255, 1, 1, 43),
              // ],
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
