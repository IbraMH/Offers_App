import 'package:flutter/material.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerTypeSupCategory extends StatelessWidget {
  bool select;
  String title;
  int num;
  GestureTapCallback? onTap;

  ContainerTypeSupCategory({
    this.select = false,
    required this.title,
    required this.num,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 10.w),
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
        decoration: BoxDecoration(
          color: select?TitleTextLogin:Colors.white,
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(
            color: select?TitleTextSplash:Colors.grey,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomeText(
              title: title,
              fontSize: 16.sp,
              color: TitleTextSplash,
            ),
            SizedBox(width: 5.w),
            CustomeText(
              title: '($num)',
              fontSize: 12.sp,
              color: TitleTextSplash,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
