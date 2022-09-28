import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/stores/controller.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  var controller = Get.put(MainController());

  // void _onItemTapped(int index) {
  //   switch (index) {
  //     case 0:
  //       controller.changeIdx(index);
  //       Get.toNamed('/questions');
  //       break;
  //     case 1:
  //       controller.changeIdx(index);
  //       break;
  //     case 2:
  //       if (controller.answeredQuestions.length !=
  //           controller.questions.length) {
  //         Get.toNamed('/result');
  //       } else {
  //         controller.changeIdx(index);
  //         Get.toNamed('/result');
  //       }
  //       break;
  //     default:
  //       break;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // onClickResult(BuildContext context) {
    //   if (controller.answeredQuestions.length < controller.questions.length) {
    //     return AlertDialog(
    //       title: const Text('Warning!'),
    //       content: const Text(
    //           'You still have unanswered questions. Do you want to continue?'),
    //       actions: <Widget>[
    //         OutlinedButton(
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //             child: const Text('No')),
    //         const TextButton(onPressed: null, child: Text('Yes'))
    //       ],
    //     );
    //   } else {
    //     Get.to('result');
    //   }
    // }

    return Container(
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Colors.grey[700]!, width: .5))),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.currentIdx.value,
            onTap: controller.changePage,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.account_balance),
                  icon: Icon(Icons.account_balance_outlined),
                  label: 'Questions',
                  tooltip: 'Questions'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.add),
                  icon: Icon(Icons.add_outlined),
                  label: 'Add',
                  tooltip: 'Add'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.leaderboard),
                  icon: Icon(Icons.leaderboard_outlined),
                  label: 'Result',
                  tooltip: 'Result')
            ]));
  }
}
