import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentQuestionIndex = 0;

  _answerQuestion() => {
        setState(() {
          if (_currentQuestionIndex < 1) {
            _currentQuestionIndex++;
          }
        })
      };

  @override
  Widget build(BuildContext context) {
    final questions = [
      'What \'s your favorite color', 
      'What \'s your favorite animal'];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: <Widget>[
          QuestionWidget(questions[_currentQuestionIndex]),
          ButtonWidget('Answer 1', _answerQuestion),
          ButtonWidget('Answer 2', _answerQuestion),
        ],
      ),
    ));
  }
}
