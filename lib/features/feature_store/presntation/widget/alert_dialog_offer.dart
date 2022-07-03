import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_store/presntation/widget/alert_dialog_code.dart';
import 'package:offers_app/features/feature_store/presntation/widget/item_alert_dialog.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';


class AlertDialogOfferFun extends StatefulWidget {


  @override
  State<AlertDialogOfferFun> createState() => _AlertDialogOfferFunState();
}

class _AlertDialogOfferFunState extends State<AlertDialogOfferFun> {

  Future<bool> _onWillPopCode() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialogCodeFun(),
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    // double _initialRating = 2;
    // late final _ratingController;

    //
    // initState()

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
              title: 'هل تريد الحصول على العرض',
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 15.h),
            CustomeText(
              title: 'عرض لمرة واحدة',
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: TitleTextLogin,
            ),
            SizedBox(height: 17.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemAlertDialog(title: 'قيمة الفاتورة', price: 20),
                  ItemAlertDialog(title: 'قيمة التوفير', price: 20,textPriceColor: TitleTextLogin),
                ],
              ),
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            _onWillPopCode();
          },
          style: ElevatedButton.styleFrom(
            primary: TitleTextLogin,
              alignment: Alignment.center,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              minimumSize: Size(130.w, 50.h)),
          child: CustomeText(
            title: 'نعم',
            fontSize: 20.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 10.w),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              alignment: Alignment.center,
              padding: EdgeInsets.zero,
              side: BorderSide(
                width: 1.5.w,
                color: TitleTextSplash
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              minimumSize: Size(130.w, 50.h)),
          child: CustomeText(
            title: 'لا',
            fontSize: 20.sp,
            color: TitleTextSplash,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: EdgeInsetsDirectional.only(bottom: 10.h),
    ); //showAlertDialog(context);
  }
}


