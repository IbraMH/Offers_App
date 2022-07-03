import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_store/presntation/view/offer_activated_screen.dart';
import 'package:offers_app/features/feature_store/presntation/widget/item_alert_dialog.dart';
import 'package:offers_app/widget/custom_textfilled_app.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';


class AlertDialogInvoiceNumberFun extends StatefulWidget {


  @override
  State<AlertDialogInvoiceNumberFun> createState() => _AlertDialogInvoiceNumberFunState();
}

class _AlertDialogInvoiceNumberFunState extends State<AlertDialogInvoiceNumberFun> {

  TextEditingController? codeController;

  @override
  void initState() {
    // TODO: implement initState
    codeController = TextEditingController();
    super.initState();
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
              title: 'ادخل رقم الفاتورة',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: TitleTextLogin,
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: CustomTextFilledApp(
                hintText: 'ادخل نص لا يزيد عن 70 حرف',
                maxLine: 1,
                height: 50.h,
                textInputType: TextInputType.number,
                controller: codeController,
              ),
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: ElevatedButton(
            onPressed: () {
              Get.off(OfferActivatedScreen());
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
              title: 'ارسال',
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


