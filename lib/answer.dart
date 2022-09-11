import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String _buttonLabel;
  final VoidCallback _onPressed;

  const ButtonWidget(this._buttonLabel, this._onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.pink, foregroundColor: Colors.white70),
          onPressed: _onPressed,
          child: Text(_buttonLabel),
        ));
  }
}