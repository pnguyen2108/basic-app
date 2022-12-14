import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    brightness: Brightness.light,

    // app bar theme
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white, foregroundColor: Colors.pinkAccent[400]),

    // bottom bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.pinkAccent[400]),

    // outline button
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.pinkAccent[400]!),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white))),

    // elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.pinkAccent[400]!),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white))),

    // main screen
    scaffoldBackgroundColor: Colors.white,

    // color scheme
    colorScheme: ColorScheme.light(primary: Colors.pinkAccent[400]!),

    // icon
    iconTheme: const IconThemeData(color: Colors.black),

    //drawer
    drawerTheme: const DrawerThemeData(scrimColor: Color.fromRGBO(0, 0, 0, .3)),

    //outline border
    inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pinkAccent[400]!)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[600]!))),

    // text style
    textTheme: const TextTheme(
        bodyText2:
            TextStyle(color: Colors.grey, fontSize: 16, letterSpacing: 2),
        headline2: TextStyle(color: Colors.black, letterSpacing: 5),
        headline5: TextStyle(color: Colors.black, letterSpacing: 5)));
