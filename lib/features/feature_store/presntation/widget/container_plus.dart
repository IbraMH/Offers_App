import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';

class ContainerPlus extends StatelessWidget {
  String image;

  ContainerPlus({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 20.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: TitleTextLogin,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: SvgPicture.asset(image,color: TitleTextSplash,),
    );
  }
}
