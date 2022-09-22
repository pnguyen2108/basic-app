import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final dynamic _buttonLabel;
  final Function _onPressed;

  const AnswerWidget(this._buttonLabel, this._onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary),
            onPressed: () => _onPressed(_buttonLabel),
            child: Text(_buttonLabel.toString())));
  }
}
