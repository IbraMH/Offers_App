import 'package:flutter/material.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerTimeSavingValue extends StatelessWidget {
  bool select;
  bool isBorder;
  bool isBorder2;
  GestureTapCallback? onTap;
  String title;

  ContainerTimeSavingValue({
    this.select = false,
    this.isBorder = false,
    this.isBorder2 = false,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: select ? TitleTextLogin : Colors.white,
            border: Border.all(
              color: select?TitleTextSplash:Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadiusDirectional.only(
              topEnd: isBorder ? Radius.circular(10.r) : Radius.zero,
              topStart: isBorder2 ? Radius.circular(10.r) : Radius.zero,
              bottomEnd: isBorder ? Radius.circular(10.r) : Radius.zero,
              bottomStart: isBorder2 ? Radius.circular(10.r) : Radius.zero,
            ),
          ),
          child: CustomeText(
            title: title,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
