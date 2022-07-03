import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_data_interested.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/data_interest.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_btn.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          children: [
            CustomeProfileBar(
              title: kInterests.tr,
            ),
            SizedBox(height: 26.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 59.w),
              child: SvgPicture.asset('assets/svg/curious.svg'),
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
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
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.w),
              child: CustomeBtn(
                pressBtn: (){},
                title: kSave.tr,
                textColor: Colors.white,
                btnColor: TitleTextSplash,
                widthBtn: double.infinity,
                fontSize: 20.sp,
                heightBtn: 50.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
