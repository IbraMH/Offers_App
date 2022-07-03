import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerPackage extends StatelessWidget {
  double price;
  int time;
  String type;
  bool typeUser;
  GestureTapCallback? onTap;

  ContainerPackage({
    required this.price,
    required this.time,
    required this.type,
    required this.typeUser,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        margin: EdgeInsetsDirectional.only(bottom: 20.h),
        decoration: BoxDecoration(
          color: typeUser?TitleTextLogin:Colors.white,
          borderRadius: BorderRadius.circular(20.r),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomeText(
              title: '$price\nSAR',
              fontSize: 20.sp,
              color: typeUser?Colors.white:TitleTextSplash,
            ),
            CustomeText(
              title: '$time شهر',
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              color: typeUser?Colors.white:TitleTextSplash,
            ),
            CustomeText(
              title: type,
              fontSize: 25.sp,
              fontWeight: FontWeight.w600,
              color: typeUser?Colors.white:TitleTextSplash,
            ),
          ],
        ),
      ),
    );
  }
}
