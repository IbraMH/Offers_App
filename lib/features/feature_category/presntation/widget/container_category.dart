import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerCategory extends StatelessWidget {
  String image;
  String title;
  GestureTapCallback? onTap;

  ContainerCategory({
    required this.image,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 6.h,end: 6.w,bottom: 10.h,start: 8.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    image,
                    width: 60.w,
                    height: 60.h,
                  )
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomeText(
                    title: title,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
