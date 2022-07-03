import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';

class ProfileDataScreen extends StatefulWidget {

  @override
  State<ProfileDataScreen> createState() => _ProfileDataScreenState();
}

class _ProfileDataScreenState extends State<ProfileDataScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController? _textEditingControllerUserName;
    TextEditingController? _textEditingControllerEmail;
    TextEditingController? _textEditingControllerDateBirth;
    TextEditingController? _textEditingControllerPhoneNumber;

    @override
    void initState() {
      // TODO: implement initState
      _textEditingControllerUserName = TextEditingController();
      _textEditingControllerEmail = TextEditingController();
      _textEditingControllerDateBirth = TextEditingController();
      _textEditingControllerPhoneNumber = TextEditingController();
      super.initState();
    }

    @override
    void dispose() {
      // TODO: implement dispose
      _textEditingControllerUserName!.dispose();
      _textEditingControllerEmail!.dispose();
      _textEditingControllerDateBirth!.dispose();
      _textEditingControllerPhoneNumber!.dispose();
      super.dispose();
    }

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

    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomeProfileBar(title: kProfileData.tr,),
              SizedBox(height: 30.h),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 60.r,
                    backgroundImage: AssetImage('assets/images/Ellipse.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10.w,
                    child: Container(
                      width: 28.w,
                      height: 27.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: SvgPicture.asset('assets/svg/camera.svg',width: 13.w,height: 13.h,),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              CustomeText(
                title: 'محمد بن عبد العزيز',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: kNameProfile,
              ),
              SizedBox(height: 5.h),
              CustomeText(
                title: '0532145937',
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: kNameProfile,
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.w),
                child: Column(
                  children: [
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
                      hintText: 'محمد بن عبد العزيز',
                      textInputType: TextInputType.name,
                    ),
                    SizedBox(height: 20.h),
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
                      hintText: 'ibrahimmh432@gmail.com',
                      textInputType: TextInputType.name,
                    ),
                    SizedBox(height: 20.h),
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
                      hintText: '10-5-1998',
                      textInputType: TextInputType.name,
                      readOnly: true,
                      pressCard: () => _selectDate(context),
                    ),
                    SizedBox(height: 20.h),
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
                      hintText: '0532145937',
                      textInputType: TextInputType.phone,
                      showWidget: true,
                    ),
                    SizedBox(height: 30.h),
                    CustomeBtn(
                      pressBtn: (){},
                      title: kSaveUpdate.tr,
                      textColor: Colors.white,
                      btnColor: TitleTextSplash,
                      widthBtn: double.infinity,
                      fontSize: 20.sp,
                      heightBtn: 55.h,
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
}
