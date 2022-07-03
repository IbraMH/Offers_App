import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';

class ItemTimeOffers extends StatelessWidget {
  String title;
  int numOffers;
  bool statusOffers;

  ItemTimeOffers({
    required this.title,
    required this.numOffers,
    this.statusOffers = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        children: [
          SvgPicture.asset('assets/svg/time_circle.svg',color: statusOffers?TitleTextLogin:kTextGray,),
          SizedBox(width: 20.w),
          CustomeText(
            title: title,
            fontSize: 14.sp,
            color: statusOffers?TitleTextSplash:kTextGray,
          ),
          Spacer(),
          CustomeText(
            title: ' عرض ${numOffers}',
            fontSize: 14.sp,
            color: statusOffers?TitleTextSplash:kTextGray,
          ),
        ],
      ),
    );
  }
}
