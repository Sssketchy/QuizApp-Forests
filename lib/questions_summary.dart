import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(ctx) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        // make it scroll
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  children: [
                    // reasons for using 'as'
                    // map has key - String and value - object
                    // hence we have to typecast what the object variable is ? String or int or ...
                    Text(((data['question_index'] as int) + 1).toString()),
                    Expanded(
                      // using expanded restricts the column with the size of the row
                      child: Column(
                        children: [
                          Text(data['question'] as String),
                          SizedBox(height: 5),
                          Text(data['user_answer'] as String),
                          Text(data['correct_answer'] as String),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
