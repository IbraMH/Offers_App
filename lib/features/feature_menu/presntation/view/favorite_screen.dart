import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_main/presntation/widget/data_offers.dart';
import 'package:offers_app/features/feature_menu/presntation/widget/container_favorite.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_time_saving_value.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/features/feature_store/presntation/view/store_screen.dart';
import 'package:offers_app/features/feature_sup_category/presntation/widget/container_store_grid_sup_category.dart';
import 'package:offers_app/localization/lang/message.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int? isSelect = 1;

  List<DataOffers> dataOffers = [
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم العرض',
        lastPrice: 80,
        offerPrice: 70,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
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
              title: kFavorite.tr,
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
                    title: 'عروض',
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
                    title: 'متاجر',
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 25.h),
                child: GridView.builder(
                  itemCount: dataOffers.length,
                  padding: EdgeInsets.all(5.h),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.h,
                    crossAxisSpacing: 20.w,
                    mainAxisExtent: 250.h,
                  ),
                  itemBuilder: (context, index) {
                    DataOffers dataOffer = dataOffers.elementAt(index);
                    return ContainerFavorite(
                      image: dataOffer.image,
                      title: dataOffer.title,
                      details: dataOffer.details,
                      lastPrice: dataOffer.lastPrice,
                      offersPrice: dataOffer.offerPrice,
                      onTap: () {
                        Get.to(StoreScreen());
                      },
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
