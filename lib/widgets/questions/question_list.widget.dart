import 'package:flutter/material.dart';
import 'package:my_first_app/models/questions/question.model.dart';

class QuestionListWidget extends StatelessWidget {
  final List<QuestionModel> _questionList;

  final Function _onPressedBtn;

  const QuestionListWidget(this._questionList, this._onPressedBtn, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        for (var item in _questionList)
          ElevatedButton(
              onPressed: () => _onPressedBtn(item.id),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              child: Text(item.id.toString()))
      ]),
    );
  }
}
