import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';

class ContainerChange extends StatelessWidget {
  bool select;
  GestureTapCallback? onTap;

  ContainerChange({
    this.select = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 15.w,
        height: 2.h,
        decoration: BoxDecoration(
          color: select?TitleTextLogin:Colors.grey,
          borderRadius: BorderRadius.circular(2.r),
        ),
      ),
    );
  }
}
