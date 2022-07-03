import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/bar_model.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_change.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_chart_type.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_time_saving_value.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/item_savings_value.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:offers_app/widget/custome_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SavingsValueScreen extends StatefulWidget {
  const SavingsValueScreen({Key? key}) : super(key: key);

  @override
  State<SavingsValueScreen> createState() => _SavingsValueScreenState();
}

class _SavingsValueScreenState extends State<SavingsValueScreen> {
  int? isSelect = 2;
  int? isSelectTypeChart = 1;

  static List<charts.Series<BarModel, String>> _createSampleData() {
    final data = [
      BarModel("Jan", 45),
      BarModel("Fep", 92),
      BarModel("Mar", 25),
      BarModel("Apr", 10),
      BarModel("May", 70),
      BarModel("Jun", 85),
      BarModel("Jul", 90),
    ];
    return [
      charts.Series<BarModel, String>(
        data: data,
        id: 'sales',
        colorFn: (_, __) => charts.MaterialPalette.gray.shade200,
        domainFn: (BarModel barModeel, _) => barModeel.month,
        measureFn: (BarModel barModeel, _) => barModeel.value,
        radiusPxFn: (BarModel barModeel, _) => 10.r,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          children: [
            CustomeProfileBar(
              title: kSavingsValue.tr,
            ),
            SizedBox(height: 35.h),
            Container(
              width: 200.w,
              height: 50.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                children: [
                  ContainerTimeSavingValue(
                    isBorder2: true,
                    title: 'منذ البداية',
                    select: isSelect == 1 ? true : false,
                    onTap: () {
                      setState(() {
                        if (isSelect != 1) {
                          isSelect = 1;
                        }
                      });
                    },
                  ),
                  ContainerTimeSavingValue(
                    isBorder: true,
                    title: 'شهري',
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
            ),
            SizedBox(height: 42.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 22.h,
                  horizontal: 25.w,
                ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ItemSavingsValue(title: 'قيمة التوفير', desc: '500 S.R'),
                    RotatedBox(
                      quarterTurns: 3,
                      child: SizedBox(
                        width: 90.w,
                        child: Divider(
                          thickness: 1.w,
                          color: Colors.grey.shade300,
                          // indent: 20.h,
                          // endIndent: 20.h,
                        ),
                      ),
                    ),
                    ItemSavingsValue(
                      title: 'قيمة العرض',
                      desc: '1000 S.R',
                      descColor: kTextOffersValue,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 26.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  ContainerChartType(
                    image: 'assets/images/chart1.png',
                    select: isSelectTypeChart == 1 ? true : false,
                    onTap: () {
                      setState(() {
                        if (isSelectTypeChart != 1) {
                          isSelectTypeChart = 1;
                        } else {
                          isSelectTypeChart = null;
                        }
                      });
                    },
                  ),
                  SizedBox(width: 10.w),
                  ContainerChartType(
                    image: 'assets/images/chart2.png',
                    select: isSelectTypeChart == 2 ? true : false,
                    onTap: () {
                      setState(() {
                        if (isSelectTypeChart != 2) {
                          isSelectTypeChart = 2;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            isSelectTypeChart == 1
                ? Center(
                    child: SizedBox(
                      height: 300,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(end: 16.w),
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: charts.BarChart(
                            _createSampleData(),
                            animate: true,
                          ),
                        ),
                      ),
                    ),
                  )
                : Center(
                    child: CircularPercentIndicator(
                      radius: 100,
                      lineWidth: 10,
                      circularStrokeCap: CircularStrokeCap.round,
                      curve: Curves.easeIn,
                      animationDuration: 1000,
                      animateFromLastPercent: true,
                      startAngle: 0,
                      animation: true,
                      progressColor: TitleTextSplash,
                      backgroundColor: TitleTextLogin,
                      percent: 0.75,//ratio > 1 ? 1 : ratio,
                      reverse: true,
                      center: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/timer.png',width: 25.w,height: 25.h,color: TitleTextSplash,),
                          SizedBox(height: 10.h),
                          CustomeText(
                            title: kSavingVale.tr,
                            fontSize: 12.sp,
                            color: kTextSavingValue,
                          ),
                          SizedBox(height: 10.h),
                          CustomeText(
                            title: '500 S.R',
                            fontSize: 24.sp,
                            color: kBackGroundIconMenuUnSelected,
                          ),
                        ],
                      ),
                    ),
                  ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerChange(
                  select: isSelectTypeChart == 1 ? true : false,
                  onTap: () {
                    setState(() {
                      if (isSelectTypeChart != 1) {
                        isSelectTypeChart = 1;
                      }
                    });
                  },
                ),
                SizedBox(width: 5.w),
                ContainerChange(
                  select: isSelectTypeChart == 2 ? true : false,
                  onTap: () {
                    setState(() {
                      if (isSelectTypeChart != 2) {
                        isSelectTypeChart = 2;
                      } else {
                        isSelectTypeChart = null;
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
