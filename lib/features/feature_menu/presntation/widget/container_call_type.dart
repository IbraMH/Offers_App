import 'package:flutter/material.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerCallType extends StatelessWidget {
  bool select;
  GestureTapCallback? onTap;
  String title;
  double width;

  ContainerCallType({
    this.select = false,
    this.onTap,
    required this.title,
    this.width = 90,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: width.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: select ? TitleTextLogin : Colors.white,
          border: Border.all(
            color: select?TitleTextSplash:Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: CustomeText(
          title: title,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
