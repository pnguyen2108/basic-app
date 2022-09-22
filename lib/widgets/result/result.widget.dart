import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/stores/controller.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  onClickRetry() => Get.toNamed('/questions');

  onClickBackHome() => Get.toNamed('/');

  @override
  Widget build(BuildContext context) {
    var score = Get.put(MainController()).score;
    return Center(
        child: Column(children: [
      Text('Your score is : $score '),
      const Text('Do you want to try again ?'),
      ElevatedButton(onPressed: onClickRetry, child: const Text('Retry')),
      ElevatedButton(
          onPressed: onClickBackHome, child: const Text('Back to Home'))
    ]));
  }
}
