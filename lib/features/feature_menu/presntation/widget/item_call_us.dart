import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCallUS extends StatelessWidget {
  String title;
  String image;

  ItemCallUS({
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomeText(
          title: title,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(width: 10.w),
        SvgPicture.asset(image,color: TitleTextLogin,),
      ],
    );
  }
}
