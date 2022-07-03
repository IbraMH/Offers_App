import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_main/presntation/widget/data_offers.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/container_list_used_offers.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_time_saving_value.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';

class UsedOffersScreen extends StatefulWidget {
  const UsedOffersScreen({Key? key}) : super(key: key);

  @override
  State<UsedOffersScreen> createState() => _UsedOffersScreenState();
}

class _UsedOffersScreenState extends State<UsedOffersScreen> {
  int? isSelect = 1;

  List<DataOffers> dataOffers = [
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 80,
        offerPrice: 70,
        details:
            'وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 90,
        offerPrice: 60,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 50,
        offerPrice: 40,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 60,
        offerPrice: 50,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 120,
        offerPrice: 100,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 120,
        offerPrice: 100,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 120,
        offerPrice: 100,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          children: [
            CustomeProfileBar(
              title: kUsedOffers.tr,
              fontSize: 20,
            ),
            SizedBox(height: 10.h),
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
                    title: 'فعال',
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
                    title: 'متوقف',
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
            SizedBox(height: 30.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: ListView.builder(
                  itemCount: dataOffers.length,
                  padding: EdgeInsets.all(5.h),
                  itemBuilder: (context, index) {
                    DataOffers dataOffer = dataOffers.elementAt(index);
                    return ContainerListUsedOffers(
                      image: dataOffer.image,
                      title: dataOffer.title,
                      lastPrice: dataOffer.lastPrice,
                      offersPrice: dataOffer.offerPrice,
                      details: dataOffer.details,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
