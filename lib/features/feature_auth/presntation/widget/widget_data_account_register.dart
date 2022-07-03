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

class WidgetDataAccountRegister extends StatefulWidget {
  GestureTapCallback? pressBtn;

  WidgetDataAccountRegister({
    this.pressBtn,
  });

  @override
  State<WidgetDataAccountRegister> createState() => _WidgetDataAccountRegisterState();
}

class _WidgetDataAccountRegisterState extends State<WidgetDataAccountRegister> {

  TextEditingController? _textEditingControllerUserName;
  TextEditingController? _textEditingControllerEmail;
  TextEditingController? _textEditingControllerDateBirth;

  @override
  void initState() {
    // TODO: implement initState
    _textEditingControllerUserName = TextEditingController();
    _textEditingControllerEmail = TextEditingController();
    _textEditingControllerDateBirth = TextEditingController();
    super.initState();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _textEditingControllerUserName!.dispose();
  //   _textEditingControllerEmail!.dispose();
  //   _textEditingControllerDateBirth!.dispose();
  //   _textEditingControllerPromoCode!.dispose();
  //   super.dispose();
  // }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
            'assets/images/group4.png',
            width: 235.w,
          ),
          SizedBox(height: 30.h),
          CustomTextFilledAuthApp(
            lable: kUserName.tr,
            validator: (value) {
              if (value!.isEmpty) {
                return kFiledNullError.tr;
              }
              return null;
            },
            controller: _textEditingControllerUserName,
            suffixIcon: 'assets/images/user.png',
            hintText: kUserName.tr,
            textInputType: TextInputType.name,
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
          SizedBox(height: 10.h),
          CustomTextFilledAuthApp(
            lable: kDateBirth.tr,
            validator: (value) {
              if (value!.isEmpty) {
                return kFiledNullError.tr;
              }
              return null;
            },
            controller: _textEditingControllerDateBirth,
            suffixIcon: 'assets/images/calendar.png',
            hintText: kDateBirth.tr,
            textInputType: TextInputType.name,
            readOnly: true,
            pressCard: () => _selectDate(context),
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
