import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/core/app_font.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetWelcomeRegister extends StatefulWidget {
  GestureTapCallback? pressBtn;

  WidgetWelcomeRegister({
    this.pressBtn,
  });

  @override
  State<WidgetWelcomeRegister> createState() => _WidgetWelcomeRegisterState();
}

class _WidgetWelcomeRegisterState extends State<WidgetWelcomeRegister> {
  TextEditingController? _textEditingControllerPhoneNumber;
  TapGestureRecognizer? _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    _textEditingControllerPhoneNumber = TextEditingController();
    super.initState();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _textEditingControllerPhoneNumber!.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomeText(
            title: kYouAreWelcome.tr,
            fontSize: 25.sp,
            color: TitleTextSplash,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          CustomeText(
            title: kOffersAppBestDiscounts.tr,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: TitleTextLogin,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          Image.asset(
            'assets/images/group1.png',
            width: 235.w,
          ),
          SizedBox(height: 30.h),
          CustomTextFilledAuthApp(
            lable: kMobileNumber.tr,
            validator: (value) {
              if (value!.isEmpty) {
                return kFiledNullError.tr;
              }
              return null;
            },
            controller: _textEditingControllerPhoneNumber,
            suffixIcon: 'assets/images/phone.png',
            hintText: kMobileNumber.tr,
            textInputType: TextInputType.phone,
            showWidget: true,
          ),
          SizedBox(height: 20.h),
          CustomeBtn(
            pressBtn: widget.pressBtn,
            title: kNext.tr,
            textColor: Colors.white,
            btnColor: TitleTextSplash,
            widthBtn: double.infinity,
            fontSize: 20.sp,
            heightBtn: 50.h,
          ),
          SizedBox(height: 30.h),
          GestureDetector(
            onTap: () {},
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: kDoYouHaveAccount.tr,
                style: TextStyle(
                  color: TitleTextSplash,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: FONT_APP,
                ),
                children: [
                  TextSpan(
                    recognizer: _tapGestureRecognizer,
                    text: kSignIn.tr,
                    style: TextStyle(
                      color: TitleTextLogin,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: FONT_APP,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
