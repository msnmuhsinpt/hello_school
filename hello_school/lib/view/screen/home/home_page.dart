import 'package:flutter/material.dart';
import 'package:hello_school/util/app_color.dart';
import 'package:hello_school/util/app_constant.dart';
import 'package:intl/intl.dart';

import 'widget/upper_info_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  DateTime now = DateTime.now();
  late DateTime lastDayOfMonth;

  @override
  void initState() {
    super.initState();
    lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBlue,
      body: ListView(
        children: [
          //upper  info widget
          const HomeUpperWidget(),
          //some space
          dividerH(),
          //divider
          const Divider(
            thickness: 0.4,
            color: AppColor.kWhite,
            endIndent: 20,
            indent: 20,
          ),
          //calender

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(
              children: List.generate(
                lastDayOfMonth.day,
                (index) {
                  final currentDate =
                      lastDayOfMonth.add(Duration(days: index + 1));
                  final dayName = DateFormat('E').format(currentDate);
                  return Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? 16.0 : 0.0, right: 16.0),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selectedIndex = index;
                      }),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 42.0,
                            width: 42.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Colors.orange
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(44.0),
                            ),
                            child: Text(
                              dayName.substring(0, 1),
                              style: TextStyle(
                                fontSize: 24.0,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "${index + 1}",
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Container(
                            height: 2.0,
                            width: 28.0,
                            color: selectedIndex == index
                                ? Colors.orange
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
