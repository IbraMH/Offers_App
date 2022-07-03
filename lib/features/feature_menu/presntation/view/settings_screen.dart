import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/container_call_type.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  int? isSelect = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeProfileBar(
              title: kSettings.tr,
              fontSize: 20,
            ),
            SizedBox(height: 55.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomeText(
                title: kLanguage.tr,
                fontSize: 18.sp,
                color: kBackGroundIconMenuUnSelected,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerCallType(
                  title: kArabic.tr,
                  select: isSelect == 1 ? true : false,
                  width: 140.w,
                  onTap: () {
                    setState(() {
                      if (isSelect != 1) {
                        isSelect = 1;
                      }
                    });
                  },
                ),
                SizedBox(width: 10.w),
                ContainerCallType(
                  title: kEnglish.tr,
                  select: isSelect == 2 ? true : false,
                  width: 140.w,
                  onTap: () {
                    setState(() {
                      if (isSelect != 2) {
                        isSelect = 2;
                      }
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 35.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomeText(
                title: kNotification.tr,
                fontSize: 18.sp,
                color: kBackGroundIconMenuUnSelected,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerCallType(
                  title: kActivation.tr,
                  select: isSelect == 1 ? true : false,
                  width: 140.w,
                  onTap: () {
                    setState(() {
                      if (isSelect != 1) {
                        isSelect = 1;
                      }
                    });
                  },
                ),
                SizedBox(width: 10.w),
                ContainerCallType(
                  title: kTurningOff.tr,
                  select: isSelect == 2 ? true : false,
                  width: 140.w,
                  onTap: () {
                    setState(() {
                      if (isSelect != 2) {
                        isSelect = 2;
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
