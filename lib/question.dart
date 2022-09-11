import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String questions;

  const QuestionWidget(this.questions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 150, 20, 50),
      child: Text(
        questions,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
