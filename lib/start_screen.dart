import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  }); // positional arguement startQuiz - switchScreen
  // void function() meaning - starquiz is a function that takes no arguements hence empty ()
  // and it has no return type therefore void

  final void Function()
  startQuiz; // has the activeScreen assigned to QuestionsScreen

  @override
  Widget build(ctx) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Forests and their Management Quiz',
            style: GoogleFonts.unbounded(fontSize: 17),
          ),
          SizedBox(height: 40),
          Image.asset('assets/images/tree.png', width: 300),
          SizedBox(height: 40),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 160, 22, 202),
            ),
            onPressed: startQuiz, // pointer to the function
            //  (OR)
            //() {
            //   startQuiz(); // we are executing inside anonymous function as a function-call
            //
            // },
            icon: Icon(Icons.arrow_forward, color: Colors.white),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
