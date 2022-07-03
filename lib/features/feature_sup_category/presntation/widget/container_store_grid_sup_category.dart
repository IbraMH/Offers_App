import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_main/presntation/widget/container_favorite_offers.dart';
import 'package:offers_app/widget/custome_text.dart';

class ContainerStoreGridSupCategory extends StatelessWidget {
  String image;
  String title;
  String details;
  int numProduct;
  GestureTapCallback? onTap;

  ContainerStoreGridSupCategory({
    required this.image,
    required this.title,
    required this.details,
    required this.numProduct,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 200.w,
            height: 250.h,
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
                        height: 120.h,
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
                      SizedBox(height: 20.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomeText(
                            title: title,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 5.w),
                          CustomeText(
                            title: '($numProduct)',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                            color: TitleTextLogin,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      CustomeText(
                        title: details,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w300,
                        color: kTitleListView,
                      ),
                      SizedBox(height: 5.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 5.w,
          top: 75.h,
          child: Container(
            width: 70.w,
            height: 70.h,
            padding: EdgeInsets.all(5.w),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0,
                      3), // changes position of shadow
                ),
              ]
            ),
            child: Image.asset('assets/images/pizza_logo.png'),
          ),
        ),
      ],
    );
  }
}


