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


class AlertDialogCodeFun extends StatefulWidget {


  @override
  State<AlertDialogCodeFun> createState() => _AlertDialogCodeFunState();
}

class _AlertDialogCodeFunState extends State<AlertDialogCodeFun> {


  Future<bool> _onWillPopInvoiceNumber() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialogInvoiceNumberFun(),
    ) ??
        false;
  }

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
            CustomeText(
              title: 'الكود الخاص بك',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: TitleTextLogin,
            ),
            SizedBox(height: 15.h),
            CustomeText(
              title: 'قم بإعطاء الرمز للكاشير',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 15.h),
            CustomeText(
              title: '5482',
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: ElevatedButton(
            onPressed: () {
              _onWillPopInvoiceNumber();
            },
            style: ElevatedButton.styleFrom(
              primary: TitleTextLogin,
                alignment: Alignment.center,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                minimumSize: Size(double.infinity, 50.h)),
            child: CustomeText(
              title: 'التالي',
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: EdgeInsetsDirectional.only(bottom: 10.h),
    ); //showAlertDialog(context);
  }
}


