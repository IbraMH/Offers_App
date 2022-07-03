import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_menu/presntation/view/subscribe_package_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/container_package.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/data_package.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({Key? key}) : super(key: key);

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  List<DataPackage> listDataPackage = [
    DataPackage(price: 300, time: 8, type: 'VIP', typeUser: true),
    DataPackage(price: 150, time: 6, type: 'User', typeUser: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          children: [
            CustomeProfileBar(
              title: kPackages.tr,
              fontSize: 20,
            ),
            SizedBox(height: 35.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/lottieFiles/lf30_editor_svkmuwum.json',
                      width: double.infinity,
                    ),
                    SizedBox(height: 20.h),
                    CustomeText(
                      title: kChooseAppropriatePlan.tr,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: listDataPackage.length,
                        padding: EdgeInsetsDirectional.only(top: 50.h),
                        itemBuilder: (context, index) {
                          DataPackage dataPackage =
                              listDataPackage.elementAt(index);
                          return ContainerPackage(
                            price: dataPackage.price,
                            time: dataPackage.time,
                            type: dataPackage.type,
                            typeUser: dataPackage.typeUser,
                            onTap: (){
                              Get.to(SubscribePackageScreen());
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
