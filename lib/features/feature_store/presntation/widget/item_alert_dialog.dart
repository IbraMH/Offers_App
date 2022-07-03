import 'package:flutter/material.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemAlertDialog extends StatelessWidget {
  String title;
  int price;
  Color textPriceColor;

  ItemAlertDialog({
    required this.title,
    required this.price,
    this.textPriceColor = TitleTextSplash,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeText(
          title: title,
          fontSize: 25.sp,
        ),
        SizedBox(height: 6.h),
        CustomeText(
          title: '$price ر.س',
          fontSize: 25.sp,
          fontWeight: FontWeight.bold,
          color: TitleTextSplash,
        ),
      ],
    );
  }
}
