import 'package:flutter/material.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemRowBottomSheet extends StatelessWidget {
  String title;

  ItemRowBottomSheet({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomeText(
          title: title,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: kBackGroundIconMenuUnSelected,
        ),
        Spacer(),
        Image.asset(
          'assets/images/phone.png',
          width: 20.w,
          height: 20.h,
          color: TitleTextLogin,
        ),
      ],
    );
  }
}
