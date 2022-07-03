import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';

class EditPasswordScreen extends StatefulWidget {
  const EditPasswordScreen({Key? key}) : super(key: key);

  @override
  State<EditPasswordScreen> createState() => _EditPasswordScreenState();
}

class _EditPasswordScreenState extends State<EditPasswordScreen> {

  TextEditingController? _textEditingControllerLastPassword;
  TextEditingController? _textEditingControllerNewPassword;
  TextEditingController? _textEditingControllerConfirmNewPassword;
  TextEditingController? _textEditingControllerEmail;

  @override
  void initState() {
    // TODO: implement initState
    _textEditingControllerLastPassword = TextEditingController();
    _textEditingControllerNewPassword = TextEditingController();
    _textEditingControllerConfirmNewPassword = TextEditingController();
    _textEditingControllerEmail = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingControllerLastPassword!.dispose();
    _textEditingControllerNewPassword!.dispose();
    _textEditingControllerConfirmNewPassword!.dispose();
    _textEditingControllerEmail!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomeProfileBar(
                title: kPassword.tr,
              ),
              SizedBox(height: 80.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 46.w),
                child: Column(
                  children: [
                    CustomeText(
                      title: kPasswordReset.tr,
                      fontSize: 25.sp,
                      textAlign: TextAlign.center,
                      color: TitleTextLogin,
                    ),
                    SizedBox(height: 13.h),
                    CustomeText(
                      title: kAllDevicesLoggedOut.tr,
                      fontSize: 15.sp,
                      color: TitleTextSplash,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 70.h),
                    CustomTextFilledAuthApp(
                      lable: kLastPassword.tr,
                      controller: _textEditingControllerLastPassword,
                      suffixIcon: 'assets/images/lock.png',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return kFiledNullError.tr;
                        }
                        return null;
                      },
                      hintText: kLastPassword.tr,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFilledAuthApp(
                      lable: kNewPassword.tr,
                      controller: _textEditingControllerNewPassword,
                      suffixIcon: 'assets/images/lock.png',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return kFiledNullError.tr;
                        }
                        return null;
                      },
                      hintText: kNewPassword.tr,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFilledAuthApp(
                      lable: kConfirmPassword.tr,
                      controller: _textEditingControllerConfirmNewPassword,
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
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            showAboutForgetPassword(
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomeText(
                                    title:
                                    'ستصلك رسالة إعادة تعين على البريد الالكترني',
                                    fontSize: 13.sp,
                                  ),
                                  SizedBox(height: 10.h),
                                  CustomeText(
                                    title: 'إعادة الارسال بعد 1:00',
                                    fontSize: 13.sp,
                                  ),
                                  SizedBox(height: 10.h),
                                  CustomTextFilledAuthApp(
                                    lable: kEmail.tr,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return kFiledNullError.tr;
                                      }
                                      return null;
                                    },
                                    controller: _textEditingControllerEmail,
                                    suffixIcon: 'assets/images/at_sign.png',
                                    hintText: kEmail.tr,
                                    textInputType: TextInputType.name,
                                  ),
                                  SizedBox(height: 20.h),
                                  CustomeBtn(
                                    pressBtn: () {},
                                    title: kSend.tr,
                                    widthBtn: double.infinity,
                                    heightBtn: 50.h,
                                    btnColor: TitleTextSplash,
                                  ),
                                ],
                              ),
                            );
                          },
                          child: CustomeText(
                            title: kForgotPassword.tr,
                            fontSize: 12.sp,
                            color: TitleTextSplash,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 85.h),
                    CustomeBtn(
                      pressBtn: (){},
                      title: kSaveEdit.tr,
                      textColor: Colors.white,
                      btnColor: TitleTextSplash,
                      widthBtn: double.infinity,
                      fontSize: 20.sp,
                      heightBtn: 50.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showAboutForgetPassword(Widget widget) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 46.w, vertical: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: kContainerBottomSheet,
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              SizedBox(height: 20.h),
              widget,
            ],
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      elevation: 4,
    );
  }

}
