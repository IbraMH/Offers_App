import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/core/app_font.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_data_interested.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/data_interest.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetInterestRegister extends StatefulWidget {
  GestureTapCallback? pressBtn;

  WidgetInterestRegister({
    this.pressBtn,
  });

  @override
  State<WidgetInterestRegister> createState() => _WidgetInterestRegisterState();
}

class _WidgetInterestRegisterState extends State<WidgetInterestRegister> {
  List<DataInterest> dataInterest = [
    DataInterest(title: 'مطاعم'),
    DataInterest(title: 'متاجر'),
    DataInterest(title: 'سوبر ماركت'),
    DataInterest(title: 'ملابس'),
    DataInterest(title: 'احذية'),
    DataInterest(title: 'متاجر الكترونية'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 29),
          child: Column(
            children: [
              CustomeText(
                title: kInterests.tr,
                fontSize: 25.sp,
                color: TitleTextSplash,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              CustomeText(
                title: kSelectInterestsToBestOffers.tr,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: TitleTextLogin,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),
              Image.asset(
                'assets/images/group5.png',
                width: 235.w,
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        SizedBox(
          height: 220.h,
          child: GridView.builder(
            itemCount: dataInterest.length,
            padding: EdgeInsets.all(5.h),
            // physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.4,
              // mainAxisSpacing: 20,
              // crossAxisSpacing: 10
            ),
            itemBuilder: (context, index) {
              DataInterest dataInterested = dataInterest.elementAt(index);
              return ContainerDataInterested(
                title: dataInterested.title,
                select: dataInterested.select,
                presCard: (){
                  setState((){
                    if(dataInterested.select == false){
                      dataInterested.select = true;
                    }else{
                      dataInterested.select = false;
                    }

                  });
                },
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 29.w),
          child: CustomeBtn(
            pressBtn: widget.pressBtn,
            title: kGoNext.tr,
            textColor: Colors.white,
            btnColor: TitleTextSplash,
            widthBtn: double.infinity,
            fontSize: 20.sp,
            heightBtn: 50.h,
          ),
        ),
      ],
    );
  }
}
