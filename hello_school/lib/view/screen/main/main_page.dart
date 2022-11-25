import 'package:flutter/material.dart';
import 'package:hello_school/view/screen/home/home_page.dart';
import 'package:hello_school/view/screen/main/widget/bottom_navigation.dart';
import 'package:hello_school/view/screen/message/message_page.dart';
import 'package:hello_school/view/screen/notification/notification_page.dart';
import 'package:hello_school/view/screen/profile/profile_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  final _pages = const [
    HomePage(),
    MessagePage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
