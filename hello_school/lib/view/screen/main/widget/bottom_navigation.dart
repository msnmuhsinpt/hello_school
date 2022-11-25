import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:hello_school/util/app_color.dart';
import 'package:hello_school/util/app_constant.dart';

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
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            child: BottomNavyBar(
              selectedIndex: newIndex,
              onItemSelected: (index) => indexChangeNotifier.value = index,
              animationDuration: const Duration(microseconds: 300),
              backgroundColor: AppColor.kBlue,
              curve: Curves.easeInCirc,
              containerHeight: 75,
              itemCornerRadius: 25,
              iconSize: 10,
              items: [
                BottomNavyBarItem(
                  icon: Image.asset(
                    icHome,
                    width: 25,
                    color: AppColor.kWhite,
                  ),
                  title: const Text('Home'),
                  activeColor: AppColor.kWhite,
                ),
                BottomNavyBarItem(
                    icon: Image.asset(
                      icMessage,
                      width: 25,
                      color: AppColor.kWhite,
                    ),
                    title: const Text('Message'),
                    activeColor: AppColor.kWhite),
                BottomNavyBarItem(
                    icon: Image.asset(
                      icNotification,
                      width: 25,
                      color: AppColor.kWhite,
                    ),
                    title: const Text('Notification'),
                    activeColor: AppColor.kWhite),
                BottomNavyBarItem(
                    icon: Image.asset(
                      icProfile,
                      width: 25,
                      color: AppColor.kWhite,
                    ),
                    title: const Text('Profile'),
                    activeColor: AppColor.kWhite),
              ],
            ));
      },
    );
  }
}
