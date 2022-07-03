import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerDataInterested extends StatelessWidget {
  String title;
  bool select;
  GestureTapCallback? presCard;

  ContainerDataInterested({
    required this.title,
    this.select = false,
    this.presCard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: presCard,
      child: Container(
        height: 50.h,
        margin: EdgeInsetsDirectional.only(bottom: 15.h, end: 10.w),
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: select?TitleTextLogin:Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            width: 1,
            color: select?TitleTextSplash:Colors.grey,
          ),
        ),
        child: CustomeText(
          title: title,
          fontSize: 16.sp,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
