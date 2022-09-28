import 'package:get/get.dart';
import 'package:my_first_app/assets/theme/dark_theme.dart';
import 'package:my_first_app/assets/theme/light_theme.dart';
import 'package:my_first_app/models/questions/question.model.dart';

class MainController extends GetxController {
  final pages = ['/questions', '/add', 'result'];
  var currentIdx = 0.obs;
  var darkMode = false.obs;
  var score = 0.obs;
  var answeredQuestions = [].obs;
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
    score.value++;
  }

  void resetScore() {
    score.value = 0;
    answeredQuestions.value = [];
  }

  void changePage(int nIdx) {
    currentIdx.value = nIdx;
    Get.toNamed(pages[nIdx]);
  }
}
