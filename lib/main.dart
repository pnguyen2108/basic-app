import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/assets/theme/dark_theme.dart';
import 'package:my_first_app/assets/theme/light_theme.dart';
import 'package:my_first_app/models/questions/question.model.dart';
import 'package:my_first_app/screens/add_question.dart';
import 'package:my_first_app/screens/home.dart';
import 'package:my_first_app/screens/questions.dart';
import 'package:my_first_app/stores/controller.dart';
import 'package:my_first_app/screens/result.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<QuestionModel> questions = [];

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
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
            page: () => const QuestionListPage(),
            transition: Transition.rightToLeftWithFade),
        GetPage(
            name: '/add',
            page: () => const AddQuestionScreen(),
            transition: Transition.rightToLeftWithFade),
        GetPage(
            name: '/result',
            page: () => const ResultWidget(),
            transition: Transition.rightToLeftWithFade)
      ];
}
