import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/container_call_type.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/item_call_us.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custom_textfilled_app.dart';
import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  int? isSelect = 1;

  TextEditingController? notesController;
  TextEditingController? _textEditingControllerUserName;
  TextEditingController? _textEditingControllerStoreSelection;

  @override
  void initState() {
    // TODO: implement initState
    notesController = TextEditingController();
    _textEditingControllerUserName = TextEditingController();
    _textEditingControllerStoreSelection = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    notesController!.dispose();
    _textEditingControllerUserName!.dispose();
    _textEditingControllerStoreSelection!.dispose();
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
              title: kCall.tr,
              fontSize: 20,
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ItemCallUS(
                      title: '0532145937', image: 'assets/svg/whatsapp.svg'),
                  SizedBox(width: 20.w),
                  ItemCallUS(
                      title: 'mohammed@gmail.com',
                      image: 'assets/svg/at-sign.svg',),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerCallType(
                  title: kSuggestion.tr,
                  select: isSelect == 1 ? true : false,
                  onTap: () {
                    setState(() {
                      if (isSelect != 1) {
                        isSelect = 1;
                      }
                    });
                  },
                ),
                SizedBox(width: 10.w),
                ContainerCallType(
                  title: kComplaint.tr,
                  select: isSelect == 2 ? true : false,
                  onTap: () {
                    setState(() {
                      if (isSelect != 2) {
                        isSelect = 2;
                      }
                    });
                  },
                ),
              ],
            ),
            isSelect==2?SizedBox(height: 30.h):SizedBox(),
            isSelect==2?Padding(
              padding: EdgeInsets.symmetric(horizontal: 46.w),
              child: CustomTextFilledAuthApp(
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
            ):SizedBox(),
            isSelect==2?SizedBox(height: 30.h):SizedBox(),
            isSelect==2?Padding(
              padding: EdgeInsets.symmetric(horizontal: 46.w),
              child: CustomTextFilledAuthApp(
                lable: kStoreSelection.tr,
                validator: (value) {
                  if (value!.isEmpty) {
                    return kFiledNullError.tr;
                  }
                  return null;
                },
                controller: _textEditingControllerStoreSelection,
                suffixIcon: 'assets/images/chevrons-down.png',
                hintText: kStoreSelection.tr,
                textInputType: TextInputType.name,
                readOnly: true,
                pressCard: () {},
              ),
            ):SizedBox(),
            SizedBox(height: isSelect==2?20.h:42.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 46.w),
              child: CustomTextFilledApp(
                hintText: 'ادخل نص لا يزيد عن 70 حرف',
                maxLength: 70,
                controller: notesController,
              ),
            ),
            SizedBox(height: 42.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 46.w),
              child: CustomeBtn(
                pressBtn: (){},
                title: kSend.tr,
                widthBtn: double.infinity,
                heightBtn: 50.h,
                btnColor: TitleTextSplash,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
