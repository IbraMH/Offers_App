import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class CustomeMainBar extends StatelessWidget {
  int index;
  String? title;
  GestureTapCallback? onTapMenu;

  CustomeMainBar({
    required this.index,
    this.title,
    this.onTapMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(15.r),bottomEnd: Radius.circular(15.r),),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ]
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(onTap: onTapMenu,child: SvgPicture.asset('assets/svg/combined.svg')),
                index == 1 || index == 2 ||index == 3 || index == 4
                    ? Center(
                      child: CustomeText(
                          title: title,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                  color: index==2?Colors.white:TitleTextLogin,
                        ),
                    )
                    : SizedBox(),
                index == 0 || index == 1 || index == 3
                    ? SizedBox(
                        width: 50.w,
                        height: 50.h,
                        child: Card(
                          elevation: 4,
                          color: kBackGroundToyFaces,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 5.w, end: 5.w, top: 5.h),
                            child: Image.asset(
                              'assets/images/toy_faces.png',
                              width: 26.w,
                              height: 34.h,
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
