import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String question;

  const QuestionWidget(this.question, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 50),
      child: Text(
        question,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
