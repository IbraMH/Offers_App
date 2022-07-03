import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';

class ItemSavingsValue extends StatelessWidget {
  String title;
  String desc;
  Color descColor;

  ItemSavingsValue({
    required this.title,
    required this.desc,
    this.descColor = TitleTextLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeText(
          title: title,
          fontSize: 25.sp,
          color: kBackGroundIconMenuUnSelected,
        ),
        SizedBox(height: 10.h),
        CustomeText(
          title: desc,
          fontSize: 18.sp,
          color: descColor,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
