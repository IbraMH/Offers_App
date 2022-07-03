import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerGifts extends StatelessWidget {
  String image;
  String title;
  String typeOffer;
  String condition;
  String typeCondition;

  ContainerGifts({
    required this.image,
    required this.title,
    required this.typeOffer,
    required this.condition,
    required this.typeCondition,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      margin: EdgeInsetsDirectional.only(bottom: 20.h),
      clipBehavior: Clip.antiAlias,
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
          Container(
            width: 110.w,
            decoration: BoxDecoration(
              color: BGroundSplash,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Center(
              child: Image.asset(
                image,
                width: 100.w,
                height: 100.h,
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomeText(
                        title: title,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        maxLines: 1,
                        overflow: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                CustomeText(
                  title: typeOffer,
                  fontSize: 14.sp,
                  color: kBackGroundIconMenuUnSelected,
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: CustomeText(
                        title: condition,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                        overflow: 1,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    CustomeText(
                      title: typeCondition,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: TitleTextLogin,
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
