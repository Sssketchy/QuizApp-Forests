import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion() {
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
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 30),
            // map is like a iterable that takes values present in the list
            // on return it will return a list of values without updating original list
            // that is the reason we are using ... to separate each button
            ...currentQuestion.getShuffledAnswers().map((x) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnswerButton(ans: x, onTap: answerQuestion),
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
