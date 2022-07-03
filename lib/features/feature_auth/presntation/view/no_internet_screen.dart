import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';

class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({Key? key}) : super(key: key);

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lottieFiles/robot-bot-3d.json',
                  width: double.infinity,
                ),
                SizedBox(height: 20.h),
                CustomeText(
                  title: 'عذرا ، لا يوجد اتصال بالإنترنت',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 60.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: CustomeBtn(
                    pressBtn: (){},
                    title: kAgain.tr,
                    widthBtn: double.infinity,
                    heightBtn: 50.h,
                    btnColor: TitleTextSplash,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
