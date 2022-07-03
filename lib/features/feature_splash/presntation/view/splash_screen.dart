import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_auth/presntation/view/view_login_screen.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.offAll(ViewLoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGroundSplash,
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 116.w,
                  height: 116.h,
                ),
                SizedBox(height: 20.h),
                CustomeText(
                  title: TitleSplash,
                  fontSize: 25.sp,
                  color: TitleTextSplash,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -80.h,
            left: 0,
            right: 0,
            child: Lottie.asset(
              'assets/lottieFiles/car.json',
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
