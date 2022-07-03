import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';

class ContainerType extends StatelessWidget {
  bool select;
  String image;
  GestureTapCallback? onTap;
  double sizeImage;

  ContainerType({
    this.select = false,
    required this.image,
    this.onTap,
    this.sizeImage = 15,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.w,
        height: 40.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: select ? kContainerFavorite : Colors.white,
          borderRadius: BorderRadius.circular(5.r),
          boxShadow: [
            select
                ? BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                : BoxShadow(
                    color: Colors.grey.withOpacity(0),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(0, 0),
                  ),
          ],
        ),
        child: Center(
            child: SvgPicture.asset(
          image,
          width: sizeImage.w,
          height: sizeImage.h,
          color: select ? TitleTextLogin : TitleTextSplash,
        )),
      ),
    );
  }
}
