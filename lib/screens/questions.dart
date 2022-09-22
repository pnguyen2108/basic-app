import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:my_first_app/models/questions/question.model.dart';
import 'package:my_first_app/stores/controller.dart';
import 'package:my_first_app/widgets/answers/answer.widget.dart';
import 'package:my_first_app/widgets/layouts/app_bar.widget.dart';
import 'package:my_first_app/widgets/layouts/bottom_navbar.widget.dart';
import 'package:my_first_app/widgets/layouts/drawer.widget.dart';
import 'package:my_first_app/widgets/questions/question.widget.dart';
import 'package:my_first_app/widgets/questions/question_list.widget.dart';

class QuestionListPage extends StatefulWidget {
  const QuestionListPage({super.key});

  @override
  State<QuestionListPage> createState() => _QuestionListPageState();
}

class _QuestionListPageState extends State<QuestionListPage> {
  QuestionModel? _currentQuestion;
  final questions = Get.put(MainController()).questions;

  @override
  void initState() {
    super.initState();
    if (questions.isNotEmpty) {
      _currentQuestion = questions[0];
    }
  }

  _answerQuestion(String answer) =>
      {if (_currentQuestion!.rightAnswer == answer) {}};

  _changeQuestion(int questionId) => {
        setState(() {
          if (questions.isNotEmpty) {
            _currentQuestion = questions
                .singleWhereOrNull((element) => element.id == questionId);
          }
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const DrawerWidget(),
        appBar: const AppBarWidget(),
        bottomNavigationBar: const BottomNavBarWidget(),
        body: questions.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    QuestionWidget(_currentQuestion!.question!),
                    if (_currentQuestion != null)
                      ...(_currentQuestion!.answers!)
                          .map(
                              (answer) => AnswerWidget(answer, _answerQuestion))
                          .toList()
                  ])
            : const Center(child: Text('No Question')));
  }
}
