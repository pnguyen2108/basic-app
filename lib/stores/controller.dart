import 'package:get/get.dart';
import 'package:my_first_app/assets/theme/dark_theme.dart';
import 'package:my_first_app/assets/theme/light_theme.dart';

class MainController extends GetxController {
  var darkMode = false.obs;

  void toggleDarkMode(bool isDarkModeEnable) {
    darkMode.value = isDarkModeEnable;

    Get.changeTheme(isDarkModeEnable ? darkTheme : lightTheme);
  }
}
