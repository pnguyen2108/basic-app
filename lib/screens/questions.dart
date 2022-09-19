import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:my_first_app/models/questions/question.model.dart';
import 'package:my_first_app/widgets/answers/answer.widget.dart';
import 'package:my_first_app/widgets/layouts/app_bar.widget.dart';
import 'package:my_first_app/widgets/layouts/drawer.widget.dart';
import 'package:my_first_app/widgets/questions/question.widget.dart';
import 'package:my_first_app/widgets/questions/question_list.widget.dart';

class QuestionListPage extends StatefulWidget {
  final List<QuestionModel>? _questions;

  const QuestionListPage(this._questions, {super.key});

  @override
  State<QuestionListPage> createState() => _QuestionListPageState();
}

class _QuestionListPageState extends State<QuestionListPage> {
  QuestionModel? _currentQuestion;
  List<QuestionModel>? _questions;

  @override
  void initState() {
    super.initState();
    _questions = widget._questions;
  }

  _answerQuestion(String answer) =>
      {if (_currentQuestion!.rightAnswer == answer) {}};

  _changeQuestion(int questionId) => {
        setState(() {
          if (widget._questions != null) {
            _currentQuestion = _questions!
                .singleWhereOrNull((element) => element.id == questionId);
          }
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const DrawerWidget(),
        appBar: const AppBarWidget(),
        body: Column(children: <Widget>[
          QuestionListWidget(_questions!, _changeQuestion),
          QuestionWidget(_currentQuestion != null
              ? _currentQuestion!.question!
              : _questions!.isNotEmpty
                  ? widget._questions![0].question as String
                  : "Please Select a Question"),
          if (_currentQuestion != null)
            ...(_currentQuestion!.answers!)
                .map((answer) => AnswerWidget(answer, _answerQuestion))
                .toList()
        ]));
  }
}
