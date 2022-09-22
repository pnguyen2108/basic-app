import 'package:get/get.dart';
import 'package:my_first_app/assets/theme/dark_theme.dart';
import 'package:my_first_app/assets/theme/light_theme.dart';
import 'package:my_first_app/models/questions/question.model.dart';

class MainController extends GetxController {
  var darkMode = false.obs;
  var score = 0;
  var answeredQuestions = [];
  var questions = <QuestionModel>[
    QuestionModel(
        id: 1, question: '2 + 2 = ???', answers: [1, 2, 3, 4], rightAnswer: 2)
  ].obs;

  void toggleDarkMode(bool isDarkModeEnable) {
    darkMode.value = isDarkModeEnable;

    Get.changeTheme(isDarkModeEnable ? darkTheme : lightTheme);
  }

  void addQuestion(QuestionModel nQuestion) {
    questions.add(nQuestion);
  }

  void addScore() {
    score++;
  }

  void resetScore() {
    score = 0;
    answeredQuestions = [];
  }
}
