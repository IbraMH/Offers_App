import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerQusetion extends StatelessWidget {
  String title;
  String? supTitle;
  GestureTapCallback? pressCard;
  bool showDetails;

  ContainerQusetion({
    required this.title,
    this.pressCard,
    this.supTitle,
    this.showDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressCard,
      child: Container(
        padding: EdgeInsetsDirectional.only(top: 12.h,bottom: 12.h,start: 10.w, end: 20.w),
        margin: EdgeInsetsDirectional.only(bottom: 20.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                CustomeText(
                  title: title,
                  fontSize: 13.sp,
                ),
                Spacer(),
                SvgPicture.asset(showDetails?'assets/svg/chevrons-top.svg':'assets/svg/chevrons-down.svg'),
              ],
            ),
            showDetails?SizedBox(height: 10.h):SizedBox(),
            showDetails?Divider(
              thickness: 0.5,
              color: Colors.grey.shade300,
              endIndent: 22.w,
              indent: 22.w,
            ):SizedBox(),
            showDetails?SizedBox(height: 27.h):SizedBox(),
            showDetails?CustomeText(
              title: supTitle,
              fontSize: 13.sp,
              color: kTextDetailsQuestion,
            ):SizedBox(),
          ],
        ),
      ),
    );
  }
}
