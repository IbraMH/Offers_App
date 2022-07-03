import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_main/presntation/widget/container_favorite_offers.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerFavorite extends StatelessWidget {
  String image;
  String title;
  double lastPrice;
  double offersPrice;
  String details;
  GestureTapCallback? onTap;

  ContainerFavorite({
    required this.image,
    required this.title,
    required this.lastPrice,
    required this.offersPrice,
    required this.details,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200.w,
        height: 230.h,
        decoration: BoxDecoration(
            color: BGroundSplash,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              width: 0.5.w,
              color: kBorderContainerHome,
            )),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    width: double.infinity,
                    height: 115.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: ContainerFavoriteOffers(image: 'assets/svg/heart1.svg',position: true,),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: ContainerFavoriteOffers(image: 'assets/svg/share.svg',),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomeText(
                    title: title,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 5.h),
                  CustomeText(
                    title: details,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w300,
                    color: kTitleListView,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      CustomeText(
                        title: ' ر.س${lastPrice}',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: TitleTextLogin,
                        decoration: TextDecoration.lineThrough,
                      ),
                      SizedBox(width: 5.w),
                      CustomeText(
                        title: ' ر.س${offersPrice}',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: kBackGroundIconMenuUnSelected,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


