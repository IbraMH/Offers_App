import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  String image;

  SocialIcon({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      width: 15.w,
      height: 15.h,
    );
  }
}
