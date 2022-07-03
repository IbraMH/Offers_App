import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';

class WidgetPasswordRegister extends StatefulWidget {
  GestureTapCallback? pressBtn;

  WidgetPasswordRegister({
    this.pressBtn,
  });

  @override
  State<WidgetPasswordRegister> createState() => _WidgetPasswordRegisterState();
}

class _WidgetPasswordRegisterState extends State<WidgetPasswordRegister> {

  TextEditingController? _textEditingControllerPassword;
  TextEditingController? _textEditingControllerConfirmPassword;

  @override
  void initState() {
    // TODO: implement initState
    _textEditingControllerPassword = TextEditingController();
    _textEditingControllerConfirmPassword = TextEditingController();
    super.initState();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _textEditingControllerPassword!.dispose();
  //   _textEditingControllerConfirmPassword!.dispose();
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
            title: kGetBestOffersNow.tr,
            fontSize: 25.sp,
            color: TitleTextSplash,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          CustomeText(
            title: kEnterAccountInformation.tr,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: TitleTextLogin,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          Image.asset(
            'assets/images/group3.png',
            width: 235.w,
          ),
          SizedBox(height: 30.h),
          CustomTextFilledAuthApp(
            lable: kPassword.tr,
            controller: _textEditingControllerPassword,
            suffixIcon: 'assets/images/lock.png',
            validator: (value) {
              if (value!.isEmpty) {
                return kFiledNullError.tr;
              }
              return null;
            },
            hintText: kPassword.tr,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
          SizedBox(height: 10.h),
          CustomTextFilledAuthApp(
            lable: kConfirmPassword.tr,
            controller: _textEditingControllerConfirmPassword,
            suffixIcon: 'assets/images/lock.png',
            validator: (value) {
              if (value!.isEmpty) {
                return kFiledNullError.tr;
              }
              return null;
            },
            hintText: kConfirmPassword.tr,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
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

        ],
      ),
    );
  }
}