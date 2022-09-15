import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:my_first_app/models/questions/question.model.dart';
import 'package:my_first_app/widgets/answers/answer.widget.dart';
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

  final List<QuestionModel> _questions = [
    QuestionModel(id: 1, question: """2 x 2 = ??? """, answers: ['1', '2', '3', '4'], rightAnswer: '4'),
    QuestionModel(id: 2, question: """Hello """, answers: ['Time', 'Shit', 'Sheep', 'Mountain'], rightAnswer: 'Time')
  ];

  _answerQuestion(String answer) => {if (_currentQuestion!.rightAnswer == answer) {}};

  _changeQuestion(int questionId) => {
        setState(() {
          if (widget._questions != null) {
            _currentQuestion = _questions.singleWhereOrNull((element) => element.id == questionId);
          }
        })
      };

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      QuestionListWidget(_questions, _changeQuestion),
      QuestionWidget(_currentQuestion != null
          ? _currentQuestion!.question!
          : _questions.isNotEmpty
              ? widget._questions![0].question as String
              : "Please Select a Question"),
      if (_currentQuestion != null)
        for (var answer in _currentQuestion!.answers!) AnswerWidget(answer, _answerQuestion)
    ]);
  }
}
