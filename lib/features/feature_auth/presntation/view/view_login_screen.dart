import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/core/app_font.dart';
import 'package:offers_app/features/feature_auth/presntation/view/no_internet_screen.dart';
import 'package:offers_app/features/feature_auth/presntation/view/view_register.dart';
import 'package:offers_app/features/feature_main/presntation/view/main_screen.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';

class ViewLoginScreen extends StatefulWidget {
  const ViewLoginScreen({Key? key}) : super(key: key);

  @override
  State<ViewLoginScreen> createState() => _ViewLoginScreenState();
}

class _ViewLoginScreenState extends State<ViewLoginScreen> {
  TextEditingController? _textEditingControllerPhoneNumber;
  TextEditingController? _textEditingControllerPassword;
  TextEditingController? _textEditingControllerEmail;
  TapGestureRecognizer? _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    _textEditingControllerPhoneNumber = TextEditingController();
    _textEditingControllerPassword = TextEditingController();
    _textEditingControllerEmail = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingControllerPhoneNumber!.dispose();
    _textEditingControllerPassword!.dispose();
    _textEditingControllerEmail!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/BGPath.png',
              width: double.infinity,
              height: 160.h,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 46.w),
              child: Column(
                children: [
                  SizedBox(height: 100.h),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 105.w,
                    height: 105.h,
                  ),
                  SizedBox(height: 22.h),
                  CustomeText(
                    title: kWelcomeBack.tr,
                    fontSize: 25.sp,
                    color: TitleTextSplash,
                  ),
                  SizedBox(height: 5.h),
                  CustomeText(
                    title: kEnterYourData.tr,
                    fontSize: 20.sp,
                    color: TitleTextLogin,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 50.h),
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
                  SizedBox(height: 10.h),
                  CustomeBtn(
                    pressBtn: () {
                      Get.to(MainMenuScreen());
                    },
                    title: kSignIn.tr,
                    textColor: Colors.white,
                    btnColor: TitleTextSplash,
                    widthBtn: double.infinity,
                    fontSize: 20.sp,
                    heightBtn: 50.h,
                  ),
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ViewRegisterScreen());
                    },
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: kNeedAccount.tr,
                        style: TextStyle(
                          color: TitleTextSplash,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: FONT_APP,
                        ),
                        children: [
                          TextSpan(
                            recognizer: _tapGestureRecognizer,
                            text: kSignUp.tr,
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
                  SizedBox(height: 20.h),
                  TextButton(
                    onPressed: () {
                      Get.to(NoInternetScreen());
                    },
                    child: CustomeText(
                      title: kGo.tr,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: TitleTextSplash,
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
