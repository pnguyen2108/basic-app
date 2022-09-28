import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/layouts/app_bar.widget.dart';
import 'package:my_first_app/widgets/layouts/bottom_navbar.widget.dart';
import 'package:my_first_app/widgets/layouts/drawer.widget.dart';

class AddQuestionScreen extends StatelessWidget {
  const AddQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(),
        endDrawer: const DrawerWidget(),
        bottomNavigationBar: const BottomNavBarWidget(),
        body: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder:
                          Theme.of(context).inputDecorationTheme.focusedBorder,
                      enabledBorder:
                          Theme.of(context).inputDecorationTheme.enabledBorder,
                      labelText: 'Question'),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder:
                          Theme.of(context).inputDecorationTheme.focusedBorder,
                      enabledBorder:
                          Theme.of(context).inputDecorationTheme.enabledBorder,
                      labelText: 'Right Answer'),
                )
              ],
            )));
  }
}
