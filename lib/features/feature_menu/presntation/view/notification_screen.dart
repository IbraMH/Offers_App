import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_main/presntation/widget/data_offers.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/container_list_notification.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

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
              title: kNotification.tr,
              fontSize: 20,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.sp),
                child: ListView.builder(
                  itemCount: dataOffers.length,
                  padding: EdgeInsetsDirectional.only(top: 30.h),
                  itemBuilder: (context, index) {
                    DataOffers dataOffer = dataOffers.elementAt(index);
                    return ContainerListNotification(
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
