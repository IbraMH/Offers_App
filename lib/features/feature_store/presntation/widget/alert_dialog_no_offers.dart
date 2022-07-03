import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_store/presntation/widget/alert_dialog_invoice_number_.dart';
import 'package:offers_app/features/feature_store/presntation/widget/item_alert_dialog.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';


class AlertDialogNoOffersFun extends StatefulWidget {


  @override
  State<AlertDialogNoOffersFun> createState() => _AlertDialogNoOffersFunState();
}

class _AlertDialogNoOffersFunState extends State<AlertDialogNoOffersFun> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      //widget.typeGender==1?BGDate:BGDateMen,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      // buttonPadding: EdgeInsets.only(left: 15,right: 15,bottom: 5),
      elevation: 5,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 18.h),
            Lottie.asset(
              'assets/lottieFiles/Sorry_offers.json',
              width: 235.w,
              height: 160.h,
            ),
            SizedBox(height: 15.h),
            CustomeText(
              title: 'عذرا, ليس لديك عروض',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    ); //showAlertDialog(context);
  }
}


