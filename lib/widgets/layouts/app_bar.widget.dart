import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/stores/controller.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  onToggleSettings() {
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = Get.put(MainController()).darkMode.value;
    final toggleDarkMode = Get.put(MainController()).toggleDarkMode;

    return Scaffold(
        body: AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text('cilk',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.pinkAccent[400])),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Get.back();
        },
      ),
      actions: [
        Switch(value: darkMode, onChanged: ((value) => toggleDarkMode(value))),
        IconButton(
            onPressed: onToggleSettings, icon: const Icon(Icons.settings))
      ],
    ));
  }
}
