import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerProfile extends StatelessWidget {
  String title;
  GestureTapCallback? pressCard;

  ContainerProfile({
    required this.title,
    this.pressCard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressCard,
      child: Container(
        height: 50.h,
        padding: EdgeInsetsDirectional.only(
            start: 10.w, end: 20.w),
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
        child: Row(
          children: [
            CustomeText(
              title: title,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            Spacer(),
            SvgPicture.asset('assets/svg/chevrons.svg'),
          ],
        ),
      ),
    );
  }
}
