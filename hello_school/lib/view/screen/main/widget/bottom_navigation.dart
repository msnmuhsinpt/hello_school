import 'package:flutter/material.dart';
import 'package:hello_school/util/app_color.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: newIndex,
              onTap: (index) => indexChangeNotifier.value = index,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              backgroundColor: AppColor.kBlue,
              selectedIconTheme: const IconThemeData(color: Colors.white),
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message_rounded), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_rounded), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: ''),
              ]),
        );
      },
    );
  }
}
