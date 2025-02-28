import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.ans, required this.onTap});
  // positional arguement has been converted to named
  final void Function() onTap;
  final String ans;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ), //horizontal and vertical padding
        backgroundColor: CupertinoColors.systemYellow,
        foregroundColor: const Color.fromARGB(255, 11, 10, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ), //nicely rounded corners
      ),
      onPressed: onTap,
      child: Center(child: Text(ans)),
    );
  }
}
