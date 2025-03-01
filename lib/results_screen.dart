import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    required this.chosenAnswers,
    required this.retryChoice,
    super.key,
  });

  final List<String> chosenAnswers;

  final void Function() retryChoice;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0], // fcfs
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(ctx) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions =
        summaryData.where((data) {
          return data['user_answer'] == data['correct_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$numCorrectQuestions',
                    style: TextStyle(
                      color:
                          numCorrectQuestions == numTotalQuestions
                              ? Colors.greenAccent
                              : Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' / ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$numTotalQuestions',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 160, 22, 202),
              ),
              onPressed: retryChoice,
              label: Text('Retry ?', style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.refresh_sharp, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
