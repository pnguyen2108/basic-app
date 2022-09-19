import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/assets/theme/dark_theme.dart';
import 'package:my_first_app/assets/theme/light_theme.dart';
import 'package:my_first_app/screens/home.dart';
import 'package:my_first_app/screens/questions.dart';
import 'package:my_first_app/stores/controller.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final List<QuestionModel> _questions = [];
  final _darkMode = Get.put(MainController()).darkMode.value;

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: _darkMode ? ThemeMode.dark : ThemeMode.light,
        initialRoute: '/',
        getPages: appRoutes(),
      );

  appRoutes() => [
        GetPage(
          name: '/',
          page: () => const HomeScreen(),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
            name: '/questions',
            page: () => const QuestionListPage([]),
            transition: Transition.rightToLeftWithFade)
      ];
}
