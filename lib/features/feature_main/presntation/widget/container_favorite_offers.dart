import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';

class ContainerFavoriteOffers extends StatelessWidget {
  bool position;
  String image;

  ContainerFavoriteOffers({
    this.position = false,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.h,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: kContainerFavorite,
        borderRadius: BorderRadiusDirectional.only(
          bottomStart: Radius.circular(position ? 8.r : 0),
          bottomEnd: Radius.circular(position ? 0 : 8.r),
        ),
      ),
      child: SvgPicture.asset(image),
    );
  }
}
