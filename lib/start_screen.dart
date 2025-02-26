import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(ctx) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset('assets/images/tree.png', width: 300),
          // ),
          Image.asset('assets/images/tree.png', width: 300),
          SizedBox(height: 40),
          Text(
            'Forests and their Management Quiz',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 40),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {},
            icon: Icon(Icons.arrow_forward),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});

//   @override
//   Widget build(ctx) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Image.asset('assets/images/quiz-logo.png', width: 300),
//         Padding(padding: EdgeInsets.only(top: 30)),
//         Text(
//           'Learn flutter the fun way!',
//           style: TextStyle(color: Colors.white, fontSize: 30),
//         ),
//         Padding(padding: EdgeInsets.only(top: 30)),
//         ElevatedButton(
//           style: ButtonStyle(
//             shape: WidgetStateProperty.all(
//               RoundedRectangleBorder(borderRadius: BorderRadius.zero),
//             ),
//           ),
//           onPressed: (() {}),
//           child: Text('Start Quiz', style: TextStyle(fontSize: 20)),
//         ),
//       ],
//     );
//   }
// }
