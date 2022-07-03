import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';

class ItemLastSearch extends StatelessWidget {
  String title;

  ItemLastSearch({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 10.h),
      child: Row(
        children: [
          SvgPicture.asset('assets/svg/time_past.svg'),
          SizedBox(width: 25.w),
          CustomeText(
            title: title,
            fontSize: 13.sp,
            color: kBackGroundIconMenuUnSelected,
          ),
          Spacer(),
          SvgPicture.asset('assets/svg/delete.svg'),
        ],
      ),
    );
  }
}
