import 'package:get/get.dart';

class MainController extends GetxController {
  var darkMode = false.obs;

  void toggleDarkMode(bool isDarkModeEnable) {
    darkMode = RxBool(isDarkModeEnable);
  }
}
