import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/widget/custome_text.dart';


class CustomeBtn extends StatelessWidget {
  String title;
  GestureTapCallback? pressBtn;
  Color btnColor;
  double widthBtn;
  double heightBtn;
  double fontSize;
  Color textColor;
  FontWeight fontWeight;


  CustomeBtn({
    required this.title,
    this.pressBtn,
    this.btnColor = Colors.black,
    this.widthBtn = 100,
    this.heightBtn = 40,
    this.fontSize = 18,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        gradient: LinearGradient(
          colors: [TitleTextLogin, kBGBtn2],
          stops: [0.3, 2.0],
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: ElevatedButton(
        onPressed: pressBtn,
        style: ElevatedButton.styleFrom(
          elevation: 0,
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            alignment: Alignment.center,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            minimumSize: Size(widthBtn.w, heightBtn.h)),
        child: CustomeText(
          title: title,
          fontSize: fontSize.sp,
          color: textColor,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
