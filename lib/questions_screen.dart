import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({required this.onSelectAnswer, super.key});

  void Function(String ans)
  onSelectAnswer; // quiz.dart function to store selected answers

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(
      selectedAnswer,
    ); // since _state can't acess var outside of them.

    setState(() {
      if (currentQuestionIndex < 9) {
        currentQuestionIndex++;
      } else {}
    });
  }

  @override
  Widget build(ctx) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // horizontal width of options
          children: [
            Center(
              child: Text(
                currentQuestion.text,
                style: GoogleFonts.robotoMono(
                  textStyle: TextStyle(color: Colors.white, fontSize: 17),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            // map is like a iterable that takes values present in the list
            // on return it will return a list of values without updating original list
            // that is the reason we are using ... to separate each button
            ...currentQuestion.getShuffledAnswers().map((x) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnswerButton(
                  ans: x,
                  onTap: () {
                    answerQuestion(x);
                  },
                ),
              );
            }), // list the ... is a keyword
            // what it does is [list, 1,2,3] if list = [5,6,7]
            // the ... will take the values in list and pull them out
            // to make [5,6,7,1,2,3] like this
          ],
        ),
      ),
    );
  }
}
