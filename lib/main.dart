import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 23, 116, 40),
                const Color.fromARGB(255, 91, 224, 120),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}

// import 'package:adv_basics/start_screen.dart';
// import 'package:flutter/material.dart';

// void dummy() {}
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 90, 14, 107),
//         body: Center(child: StartScreen()),
//       ),
//     ),
//   );
// }
