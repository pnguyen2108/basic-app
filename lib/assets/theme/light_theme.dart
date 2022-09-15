import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color.fromRGBO(94, 53, 177, 1),
    fontFamily: 'Georgia',
    textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 16),
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind')));
