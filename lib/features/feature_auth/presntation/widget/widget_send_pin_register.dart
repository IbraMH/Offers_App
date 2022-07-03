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
import 'package:pin_code_fields/pin_code_fields.dart';

class WidgetSendPinRegister extends StatefulWidget {
  GestureTapCallback? pressBtn;

  WidgetSendPinRegister({
    this.pressBtn,
  });

  @override
  State<WidgetSendPinRegister> createState() => _WidgetSendPinRegisterState();
}

class _WidgetSendPinRegisterState extends State<WidgetSendPinRegister> {
  TextEditingController? _textEditingControlleActiveCode;
  String ActiveCode = "";

  @override
  void initState() {
    // TODO: implement initState
    _textEditingControlleActiveCode = TextEditingController();
    super.initState();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _textEditingControlleActiveCode!.dispose();
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
            title: kVerificationCodeSent.tr,
            fontSize: 25.sp,
            color: TitleTextSplash,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          CustomeText(
            title: '972567408830+',
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: TitleTextLogin,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25.h),
          Image.asset(
            'assets/images/group2.png',
            width: 235.w,
          ),
          SizedBox(height: 25.h),
          CustomeText(
            title: kVerificationCodeMobileNumber.tr,
            fontSize: 13.sp,
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomeText(
                title: kResendAfter.tr,
                fontSize: 13.sp,
              ),
              SizedBox(width: 5.w),
              CustomeText(
                title: '1:00',
                fontSize: 13.sp,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: BildeTextActiveCode(),
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

  Widget BildeTextActiveCode() {
    return PinCodeTextField(
      length: 4,
      textStyle: TextStyle(
        fontSize: 18,
        color: TitleTextSplash,
        fontWeight: FontWeight.bold,
      ),
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10.r),
        borderWidth: 0.5,
        fieldHeight: 60,
        fieldWidth: 60,
        disabledColor: Color(0xFFCECECE),
        activeColor: Colors.grey,
        selectedFillColor: Colors.white,
        activeFillColor:Colors.white,
        selectedColor: TitleTextLogin,
        inactiveFillColor: Colors.white,
        inactiveColor: Color(0xFFCECECE),
      ),
      cursorColor: TitleTextSplash,

      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      controller: _textEditingControlleActiveCode,
      //  errorAnimationController: errorController,
      keyboardType: TextInputType.number,

      onCompleted: (v) {
        print("Completed");
        print(v);
        ActiveCode = v;
      },
      onChanged: (value) {
        print(value);
      },
      /*validator: (value) {
        if(value.isEmpty) {
          return kPleaseActiveCode.tr;
        }else if(value.length!=4) {
         // return kPleaseActiveCode.tr;
        }else{
          return null;
        }
      },*/
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
      appContext: context,
    );
  }

}
