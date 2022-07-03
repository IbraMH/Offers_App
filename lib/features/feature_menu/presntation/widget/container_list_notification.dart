import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_main/presntation/widget/container_favorite_offers.dart';
import 'package:offers_app/features/feature_store/presntation/widget/container_plus.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerListNotification extends StatelessWidget {
  String image;
  String title;
  double lastPrice;
  double offersPrice;
  String details;


  ContainerListNotification({
    required this.image,
    required this.title,
    required this.lastPrice,
    required this.offersPrice,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity ,
          height: 120.h,
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
          margin: EdgeInsetsDirectional.only(bottom: 20.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              width: 1,
              color: Colors.grey.shade300,
            )
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset(
                  image,
                  width: 120.w,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 5.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomeText(
                        title: title,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      CustomeText(
                        title: details,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w300,
                        color: kTitleListView,
                        overflow: 1,
                        maxLines: 2,
                      ),
                      Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
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
                        ],
                      ),
                      SizedBox(height: 5.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}




