import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_main/presntation/widget/data_offers.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/container_list_vip_offers.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/data_vip_offers.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';

class VipOffersScreen extends StatefulWidget {
  const VipOffersScreen({Key? key}) : super(key: key);

  @override
  State<VipOffersScreen> createState() => _VipOffersScreenState();
}

class _VipOffersScreenState extends State<VipOffersScreen> {

  List<DataVipOffers> dataVipOffers = [
    DataVipOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 80,
        offerPrice: 70,
        timeOffers: 15,
        details:
        'وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف'),
    DataVipOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 90,
        offerPrice: 60,
        timeOffers: 15,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataVipOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 50,
        offerPrice: 40,
        timeOffers: 15,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataVipOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 60,
        offerPrice: 50,
        timeOffers: 15,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataVipOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 120,
        offerPrice: 100,
        timeOffers: 15,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataVipOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 120,
        offerPrice: 100,
        timeOffers: 15,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataVipOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 120,
        offerPrice: 100,
        timeOffers: 15,
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
              title: kVipOffers.tr,
              fontSize: 20,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: ListView.builder(
                  itemCount: dataVipOffers.length,
                  padding: EdgeInsets.symmetric(vertical: 30.h),
                  itemBuilder: (context, index) {
                    DataVipOffers dataOffer = dataVipOffers.elementAt(index);
                    return ContainerListVipOffers(
                      image: dataOffer.image,
                      title: dataOffer.title,
                      lastPrice: dataOffer.lastPrice,
                      offersPrice: dataOffer.offerPrice,
                      details: dataOffer.details,
                      timeOffers: dataOffer.timeOffers,
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
