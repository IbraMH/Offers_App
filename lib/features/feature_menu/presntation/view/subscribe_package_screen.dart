import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/features/feature_subscribed_successfully/presntation/view/subscribed_successfully_screen.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';

class SubscribePackageScreen extends StatefulWidget {
  const SubscribePackageScreen({Key? key}) : super(key: key);

  @override
  State<SubscribePackageScreen> createState() => _SubscribePackageScreenState();
}

class _SubscribePackageScreenState extends State<SubscribePackageScreen> {
  TextEditingController? _textEditingControllerPromoCode;

  int _groupValue = -1;

  @override
  void initState() {
    // TODO: implement initState
    _textEditingControllerPromoCode = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingControllerPromoCode!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          children: [
            CustomeProfileBar(
              title: kSubscribePackage.tr,
              fontSize: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 17.h),
                    Row(
                      children: [
                        SizedBox(width: 16.w),
                        CustomeText(
                          title: kPackage.tr,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      width: 300.w,
                      height: 350.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100.h,
                            color: TitleTextLogin,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: 5.w, bottom: 5.h),
                                      child: CustomeText(
                                        title: '12  شهر',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Center(
                                  child: CustomeText(
                                    title: 'VIP',
                                    fontSize: 33.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: 55.w,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: CustomeText(
                              title:
                              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مميزات الباقة',
                              fontSize: 15.sp,
                              color: kContainerBottomSheet,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Spacer(),
                          CustomeText(
                            title: '300 SAR',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        SizedBox(width: 16.w),
                        CustomeText(
                          title: kPromoCode.tr,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 37.w),
                      child: CustomTextFilledAuthApp(
                        lable: kPromoCode.tr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return kFiledNullError.tr;
                          }
                          return null;
                        },
                        controller: _textEditingControllerPromoCode,
                        suffixIcon: 'assets/images/icon_time.png',
                        hintText: kPromoCode.tr,
                        textInputType: TextInputType.name,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45.w),
                      child: Row(
                        children: [
                          CustomeText(
                            title: 'نسبة الخصم 50%',
                            fontSize: 14.sp,
                            color: kTextSavingValue,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 53.w),
                      child: CustomeBtn(
                        pressBtn: (){
                          Get.to(SubscribedSuccessfullyScreen());
                        },
                        title: kActivationCode.tr,
                        widthBtn: double.infinity,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        SizedBox(width: 16.w),
                        CustomeText(
                          title: kPaymentOptions.tr,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        _myRadioButton(
                          value: 0,
                          image: 'assets/images/stc.png',
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue),
                        ),
                        _myRadioButton(
                          value: 1,
                          image: 'assets/images/mada.png',
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue),
                        ),
                        _myRadioButton(
                          value: 2,
                          image: 'assets/images/brand.png',
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myRadioButton(
      {String? image,
        required int value,
        double fontSize = 12,
        Color fontColor = Colors.grey,
        bool isSelected = false,
        required ValueChanged? onChanged}) {
    return SizedBox(
      width: 110.w,
      child: RadioListTile(
        contentPadding: EdgeInsets.zero,
        value: value,
        groupValue: _groupValue,
        activeColor: TitleTextLogin,
        onChanged: onChanged,
        visualDensity: VisualDensity(horizontal: -4.0),
        dense: true,
        title: Center(
          child: Container(
            width: 42.w,
            height: 40.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kContainerFavorite,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: Center(
              child: Image.asset(
                image!,
                width: 25.w,
                height: 25.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

