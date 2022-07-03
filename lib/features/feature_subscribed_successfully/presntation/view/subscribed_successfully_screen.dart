import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_main/presntation/view/home_screen.dart';
import 'package:offers_app/features/feature_main/presntation/view/main_screen.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class SubscribedSuccessfullyScreen extends StatefulWidget {
  const SubscribedSuccessfullyScreen({Key? key}) : super(key: key);

  @override
  State<SubscribedSuccessfullyScreen> createState() =>
      _SubscribedSuccessfullyScreenState();
}

class _SubscribedSuccessfullyScreenState extends State<SubscribedSuccessfullyScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Get.offAll(MainMenuScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'assets/lottieFiles/succ.json',
              ),
              SizedBox(height: 10.h),
              CustomeText(
                title: kSubscribedSuccessfully.tr,
                fontSize: 29.sp,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              CustomeText(
                title: kEnjoyBestOffers.tr,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
                color: kTextGray,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
