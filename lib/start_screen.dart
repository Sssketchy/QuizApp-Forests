import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  }); // positional arguement startQuiz - switchScreen
  // void function() meaning - starquiz is a function that takes no arguements hence empty ()
  // and it has no return type therefore void

  final void Function() startQuiz;

  @override
  Widget build(ctx) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/tree.png', width: 300),
          SizedBox(height: 40),
          Text(
            'Forests and their Management Quiz',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 40),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellowAccent,
            ),
            onPressed: startQuiz, // pointer to the function
            //  (OR)
            //() {
            //   startQuiz(); // we are executing inside anonymous function as a function-call
            // },
            icon: Icon(Icons.arrow_forward),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
