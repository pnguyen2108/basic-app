import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/stores/controller.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    // final darkMode = Get.put(MainController()).darkMode.value;
    // final toggleDarkMode = Get.put(MainController()).toggleDarkMode;

    onPressSettings() {}

    return Scaffold(
        endDrawer: Drawer(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            width: 100,
            child:
                ListView(shrinkWrap: true, padding: EdgeInsets.zero, children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: Container(
                      height: 30.0,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(192, 192, 192, .6),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                    'assets/images/b20400a85a7970eada781b8e2190e611.jpg')),
                            Text('John McTavish',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(letterSpacing: 0)),
                            Text('pnguyen2108@gmail.com',
                                style: Theme.of(context).textTheme.bodySmall)
                          ]))),
              const Divider(color: Colors.grey),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: SizedBox(
                      child: Text('SETTINGS',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontWeight: FontWeight.bold)))),
              ListTile(
                onTap: null,
                leading: const Icon(Icons.account_circle),
                title: const Text('Account Settings'),
                trailing: IconButton(
                    onPressed: onPressSettings,
                    icon: const Icon(Icons.arrow_forward)),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: SizedBox(
                      child: Text('DARK MODE',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontWeight: FontWeight.bold)))),
              const ListTile(
                  onTap: null,
                  leading: Icon(Icons.settings_outlined),
                  title: Text('Auto Dark Mode')),
              // ListTile(
              //     onTap: () => toggleDarkMode,
              //     leading: const Icon(Icons.dark_mode),
              //     title: const Text('Dark Mode'),
              //     trailing: Switch(
              //         value: darkMode,
              //         onChanged: ((value) => toggleDarkMode(value))))
            ])));
  }
}
