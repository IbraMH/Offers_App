import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_main/presntation/widget/container_favorite_offers.dart';
import 'package:offers_app/features/feature_store/presntation/widget/container_plus.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerListVipOffers extends StatelessWidget {
  String image;
  String title;
  double lastPrice;
  double offersPrice;
  String details;
  int timeOffers;

  ContainerListVipOffers({
    required this.image,
    required this.title,
    required this.lastPrice,
    required this.offersPrice,
    required this.details,
    required this.timeOffers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsetsDirectional.only(bottom: 20.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            width: 1,
            color: Colors.grey.shade300,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 125.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              children: [
                CustomeText(
                  title: title,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: CustomeText(
              title: details,
              fontSize: 13.sp,
              fontWeight: FontWeight.w300,
              color: kTitleListView,
              overflow: 1,
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomeText(
                  title: ' ر.س${lastPrice}',
                  fontSize: 12.sp,
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
                Spacer(),
                CustomeText(
                  title: '  صالح لمدة ${timeOffers} يوم ',
                  fontSize: 15.sp,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
