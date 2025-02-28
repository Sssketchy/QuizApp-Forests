import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(ctx) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The Question....'),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text("answer 1")),
          ElevatedButton(onPressed: () {}, child: Text("answer 2")),
          ElevatedButton(onPressed: () {}, child: Text("answer 3")),
          ElevatedButton(onPressed: () {}, child: Text("answer 4")),
        ],
      ),
    );
  }
}
