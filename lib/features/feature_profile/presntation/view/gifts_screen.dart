import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_gifts.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/data_gifts.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class GiftsScreen extends StatefulWidget {
  const GiftsScreen({Key? key}) : super(key: key);

  @override
  State<GiftsScreen> createState() => _GiftsScreenState();
}

class _GiftsScreenState extends State<GiftsScreen> {
  List<DataGifts> listDataGifts = [
    DataGifts(
        image: 'assets/images/logo1.png',
        title: 'هدية مقدمة من متجر نصر ابو العبد',
        typeOffer: 'عرض 1+1',
        condition: 'احصل على العرض مقابل الشراء',
        typeCondition: '50 ر.س'),
    DataGifts(
        image: 'assets/images/logo2.png',
        title: 'هدية مقدمة من متجر نصر ابو العبد',
        typeOffer: 'عرض 1+1',
        condition: 'احصل على العرض مقابل الشراء',
        typeCondition: '50 ر.س'),
    DataGifts(
        image: 'assets/images/logo1.png',
        title: 'هدية مقدمة من متجر نصر ابو العبد',
        typeOffer: 'عرض 1+1',
        condition: 'احصل على العرض مقابل الشراء',
        typeCondition: '50 ر.س'),
    DataGifts(
        image: 'assets/images/logo2.png',
        title: 'هدية مقدمة من متجر نصر ابو العبد',
        typeOffer: 'عرض 1+1',
        condition: 'احصل على العرض مقابل الشراء',
        typeCondition: '50 ر.س'),
    DataGifts(
        image: 'assets/images/logo1.png',
        title: 'هدية مقدمة من متجر نصر ابو العبد',
        typeOffer: 'عرض 1+1',
        condition: 'احصل على العرض مقابل الشراء',
        typeCondition: '50 ر.س'),
    DataGifts(
        image: 'assets/images/logo2.png',
        title: 'هدية مقدمة من متجر نصر ابو العبد',
        typeOffer: 'عرض 1+1',
        condition: 'احصل على العرض مقابل الشراء',
        typeCondition: '50 ر.س'),
    DataGifts(
        image: 'assets/images/logo1.png',
        title: 'هدية مقدمة من متجر نصر ابو العبد',
        typeOffer: 'عرض 1+1',
        condition: 'احصل على العرض مقابل الشراء',
        typeCondition: '50 ر.س'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          children: [
            CustomeProfileBar(
              title: kGifts.tr,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  itemCount: listDataGifts.length,
                  itemBuilder: (context, index) {
                    DataGifts dataGifts = listDataGifts.elementAt(index);
                    return ContainerGifts(
                      image: dataGifts.image,
                      title: dataGifts.title,
                      typeOffer: dataGifts.typeOffer,
                      condition: dataGifts.condition,
                       typeCondition: dataGifts.typeCondition,
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
