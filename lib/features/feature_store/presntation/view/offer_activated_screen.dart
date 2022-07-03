import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_main/presntation/view/main_screen.dart';
import 'package:offers_app/features/feature_store/presntation/view/store_screen.dart';
import 'package:offers_app/widget/custome_text.dart';

class OfferActivatedScreen extends StatefulWidget {
  const OfferActivatedScreen({Key? key}) : super(key: key);

  @override
  State<OfferActivatedScreen> createState() => _OfferActivatedScreenState();
}

class _OfferActivatedScreenState extends State<OfferActivatedScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Get.offAll(StoreScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 85.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(
                  'assets/lottieFiles/succ.json',
                ),
                SizedBox(height: 10.h),
                CustomeText(
                  title: 'تم تفعيل العرض',
                  fontSize: 23.sp,
                ),
                SizedBox(height: 19.h),
                CustomeText(
                  title: 'تمتع بعروضنا ووفر الكثير من الانفاق',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: kTextGray,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
