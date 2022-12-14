import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    brightness: Brightness.dark,

    // app bar theme
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black, foregroundColor: Colors.white),

    // bottom bar
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
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
    scaffoldBackgroundColor: Colors.black,

    //color scheme
    colorScheme: ColorScheme.dark(primary: Colors.pink[400]!),

    // icon
    iconTheme: const IconThemeData(color: Colors.white),

    //drawer
    drawerTheme: const DrawerThemeData(
        scrimColor: Color.fromRGBO(255, 255, 255, .05), elevation: 1000),

    //outline border
    inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pinkAccent[400]!)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[600]!))),

    // switch
    switchTheme: SwitchThemeData(
        overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
        thumbColor: MaterialStateProperty.all<Color>(Colors.white),
        trackColor: MaterialStateProperty.all<Color>(Colors.blue)),

    // text style
    textTheme: const TextTheme(
        bodyText2:
            TextStyle(color: Colors.white54, fontSize: 16, letterSpacing: 2),
        headline2: TextStyle(color: Colors.white, letterSpacing: 5),
        headline5: TextStyle(color: Colors.white, letterSpacing: 5)));
