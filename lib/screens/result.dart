import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/stores/controller.dart';
import 'package:my_first_app/widgets/layouts/app_bar.widget.dart';
import 'package:my_first_app/widgets/layouts/bottom_navbar.widget.dart';
import 'package:my_first_app/widgets/layouts/drawer.widget.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  onClickRetry() => Get.toNamed('/questions');

  onClickBackHome() => Get.toNamed('/');

  @override
  Widget build(BuildContext context) {
    var score = Get.put(MainController()).score;
    return Scaffold(
        appBar: const AppBarWidget(),
        endDrawer: const DrawerWidget(),
        bottomNavigationBar: const BottomNavBarWidget(),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'SCORE',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                '$score',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 70),
              const Text('Do you want to try again ?'),
              const SizedBox(height: 20),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                            onPressed: onClickRetry,
                            child: const Text('Retry')),
                        ElevatedButton(
                            onPressed: onClickBackHome,
                            child: const Text('Home'))
                      ]))
            ])));
  }
}
