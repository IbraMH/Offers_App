import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class CustomeProfileBar extends StatelessWidget {
  String? title;
  double fontSize;

  CustomeProfileBar({
    this.title,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.only(
            bottomStart: Radius.circular(15.r),
            bottomEnd: Radius.circular(15.r),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    'assets/images/arrow_back.png',
                    width: 15.w,
                    height: 15.h,
                    color: TitleTextSplash,
                  ),
                ),
                SizedBox(width: 15.w),
                Center(
                  child: CustomeText(
                    title: title,
                    fontSize: fontSize.sp,
                    fontWeight: FontWeight.bold,
                    color: TitleTextSplash,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
