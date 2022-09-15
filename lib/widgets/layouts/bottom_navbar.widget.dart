import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  _clickMe() => {};

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.pink,
      child: Row(children: <Widget>[
        IconButton(
          onPressed: _clickMe,
          icon: const Icon(Icons.home),
          color: Colors.white,
        ),
        IconButton(
          onPressed: _clickMe,
          icon: const Icon(Icons.question_mark),
          color: Colors.white,
        ),
      ]),
    );
  }
}
