import 'package:flutter/material.dart';

import '../../../../util/app_color.dart';
import '../../../../util/app_constant.dart';
import '../../../widget/app_text_view.dart';

class HomeUpperWidget extends StatelessWidget {
  const HomeUpperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: commonPaddingAll,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appTextView(
                  name: 'Muhsin',
                  isBold: true,
                  color: AppColor.kWhite,
                  size: 20),
              dividerSH(),
              appTextView(
                  name: 'ID 12345 | Teacher', color: AppColor.kWhite, size: 12)
            ],
          ),
          const Spacer(),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: AppColor.kWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: commonPaddingAll5,
              child: Image.asset(
                icNotification,
                height: 20,
                color: AppColor.kBlack,
              ),
            ),
          ),
          dividerW(),
          SizedBox(
            height: 35,
            width: 35,
            child: Image.asset(
              icMenu,
              color: AppColor.kWhite,
            ),
          ),
        ],
      ),
    );
  }
}
