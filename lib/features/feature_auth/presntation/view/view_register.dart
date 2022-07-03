import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_auth/presntation/widget/widget_data_account_register.dart';
import 'package:offers_app/features/feature_auth/presntation/widget/widget_interests_register.dart';
import 'package:offers_app/features/feature_auth/presntation/widget/widget_password_register.dart';
import 'package:offers_app/features/feature_auth/presntation/widget/widget_send_pin_register.dart';
import 'package:offers_app/features/feature_auth/presntation/widget/widget_welcome_register.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class ViewRegisterScreen extends StatefulWidget {
  const ViewRegisterScreen({Key? key}) : super(key: key);

  @override
  State<ViewRegisterScreen> createState() => _ViewRegisterScreenState();
}

class _ViewRegisterScreenState extends State<ViewRegisterScreen> {
  int selectWidget = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/BGPath.png',
              width: double.infinity,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState((){
                            if(selectWidget==5){
                              selectWidget = 4;
                            }else if(selectWidget==4){
                              selectWidget = 3;
                            }else if(selectWidget==3){
                              selectWidget = 2;
                            }else if(selectWidget==2){
                              selectWidget = 1;
                            }else{
                              Get.back();
                            }
                          });
                        },
                        child: Image.asset(
                          'assets/images/arrow_back.png',
                          width: 15.w,
                          height: 15.h,
                        ),
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        width: 105.w,
                        height: 105.h,
                      ),
                      SizedBox(width: 15.w),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  selectWidget == 1
                      ? WidgetWelcomeRegister(
                          pressBtn: () {
                            setState(() {
                              selectWidget = 2;
                            });
                          },
                        )
                      : selectWidget == 2
                          ? WidgetSendPinRegister(
                              pressBtn: () {
                                setState(() {
                                  selectWidget = 3;
                                });
                              },
                            )
                          : selectWidget == 3
                              ? WidgetPasswordRegister(
                                  pressBtn: () {
                                    setState(() {
                                      selectWidget = 4;
                                    });
                                  },
                                )
                              : selectWidget == 4
                                  ? WidgetDataAccountRegister(
                                      pressBtn: () {
                                        setState(() {
                                          selectWidget = 5;
                                        });
                                      },
                                    )
                                  : selectWidget == 5
                                      ? WidgetInterestRegister(pressBtn: (){} ,)
                                      : SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
