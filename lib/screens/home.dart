import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/widgets/layouts/app_bar.widget.dart';
import 'package:my_first_app/widgets/layouts/drawer.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const DrawerWidget(),
        appBar: const AppBarWidget(),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Welcome!', style: Theme.of(context).textTheme.headline5),
              const SizedBox(height: 5),
              Text(
                'Hello Welcome to cilk',
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              OutlinedButton(
                onPressed: () => Get.toNamed('/questions'),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)))),
                child: const Text('Get Started'),
              )
            ])));
  }
}
