import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/core/app_size.dart';
import 'package:offers_app/features/feature_main/presntation/widget/container_offers.dart';
import 'package:offers_app/features/feature_main/presntation/widget/data_offers.dart';
import 'package:offers_app/features/feature_store/presntation/widget/alert_dialog_no_offers.dart';
import 'package:offers_app/features/feature_store/presntation/widget/alert_dialog_offer.dart';
import 'package:offers_app/features/feature_store/presntation/widget/container_list_offers_store.dart';
import 'package:offers_app/features/feature_store/presntation/widget/container_offers_store.dart';
import 'package:offers_app/features/feature_store/presntation/widget/item_row_bottom_sheet.dart';
import 'package:offers_app/features/feature_store/presntation/widget/social_icon.dart';
import 'package:offers_app/features/feature_sup_category/presntation/widget/container_store_grid_sup_category.dart';
import 'package:offers_app/features/feature_sup_category/presntation/widget/container_type.dart';
import 'package:offers_app/widget/custome_btn.dart';
import 'package:offers_app/widget/custome_text.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  int? isSelectTypeChart = 1;

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
  ];

  var listTitle = [
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
    'المدينة_الشارع_بجوار',
  ];

  Future<bool> _onWillPopOffer() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialogOfferFun(),
    ) ??
        false;
  }

  Future<bool> _onWillPopNoOffer() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialogNoOffersFun(),
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClipPath(),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [TitleTextLogin, kBGBtn2],
                            stops: [0.3, 2.0],
                            begin: AlignmentDirectional.topCenter,
                            end: AlignmentDirectional.bottomCenter,
                            tileMode: TileMode.clamp,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/BGPath.png',
                        width: double.infinity,
                        height: 160.h,
                        color: Colors.white12,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: 32.h, start: 16.w, end: 16.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Image.asset(
                          'assets/images/arrow_back.png',
                          width: 15.w,
                          height: 15.h,
                          color: kBackGroundIconMenuUnSelected,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/svg/heart1.svg',
                        width: 20.w,
                        height: 20.h,
                        color: kBackGroundIconMenuUnSelected,
                      ),
                      SizedBox(width: 20.w),
                      SvgPicture.asset(
                        'assets/svg/share.svg',
                        width: 20.w,
                        height: 20.h,
                        color: kBackGroundIconMenuUnSelected,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 50.h),
                    Center(
                      child: Container(
                        width: 105.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Center(
                          child: Image.asset(
                            'assets/images/logo1.png',
                            width: 70.w,
                            height: 70.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomeText(
                      title: 'اسم المتجر',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(image: 'assets/svg/twitter.svg'),
                SizedBox(width: 20.w),
                SocialIcon(image: 'assets/svg/facebook.svg'),
                SizedBox(width: 20.w),
                SocialIcon(image: 'assets/svg/instagram.svg'),
              ],
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.5.w),
              child: GestureDetector(
                onTap: () {
                  showAboutForgetPassword(
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/map-pin.svg',
                                width: 20.w,
                                height: 20.h,
                                color: TitleTextLogin,
                              ),
                              SizedBox(width: 20.w),
                              CustomeText(
                                title: 'فروعنا',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsetsDirectional.only(top: 23.h),
                              itemCount: listTitle.length,
                              itemBuilder: (context, index) {
                                String title = listTitle.elementAt(index);
                              return Padding(
                                padding: EdgeInsetsDirectional.only(bottom: 25.h),
                                child: ItemRowBottomSheet(title: title),
                              );
                              },
                            ),
                          )

                        ],
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/map-pin.svg',
                      width: 20.w,
                      height: 20.h,
                      color: TitleTextLogin,
                    ),
                    SizedBox(width: 10.w),
                    CustomeText(
                      title: 'المدينة_الشارع_بجوار',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: kBackGroundIconMenuUnSelected,
                    ),
                    Spacer(),
                    SvgPicture.asset('assets/svg/chevrons.svg'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.5.w),
              child: Row(
                children: [
                  ContainerType(
                    image: 'assets/svg/category2.svg',
                    select: isSelectTypeChart == 1 ? true : false,
                    onTap: () {
                      setState(() {
                        if (isSelectTypeChart != 1) {
                          isSelectTypeChart = 1;
                        } else {
                          isSelectTypeChart = null;
                        }
                      });
                    },
                  ),
                  SizedBox(width: 10.w),
                  ContainerType(
                    image: 'assets/svg/menu.svg',
                    select: isSelectTypeChart == 2 ? true : false,
                    sizeImage: 8,
                    onTap: () {
                      setState(() {
                        if (isSelectTypeChart != 2) {
                          isSelectTypeChart = 2;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            isSelectTypeChart == 1 ? gridSupCategory() : listSupCategory(),
            Container(
              width: double.infinity,
              height: 96.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 47.w),
                child: CustomeBtn(
                  pressBtn: () {
                    _onWillPopOffer();
                    // _onWillPopNoOffer();
                  },
                  title: 'تفعيل الخصم',
                  widthBtn: double.infinity,
                  heightBtn: 50.h,
                  btnColor: TitleTextSplash,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gridSupCategory() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: GridView.builder(
          itemCount: dataOffers.length,
          padding: EdgeInsets.all(5.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.w,
            mainAxisExtent: 280.h,
          ),
          itemBuilder: (context, index) {
            DataOffers dataOffer = dataOffers.elementAt(index);
            return ContainerOffersStore(
              image: dataOffer.image,
              title: dataOffer.title,
              lastPrice: dataOffer.lastPrice,
              offersPrice: dataOffer.offerPrice,
              details: dataOffer.details,
            );
          },
        ),
      ),
    );
  }

  Widget listSupCategory() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: ListView.builder(
          itemCount: dataOffers.length,
          padding: EdgeInsets.all(5.h),
          itemBuilder: (context, index) {
            DataOffers dataOffer = dataOffers.elementAt(index);
            return ContainerListOffersStore(
              image: dataOffer.image,
              title: dataOffer.title,
              lastPrice: dataOffer.lastPrice,
              offersPrice: dataOffer.offerPrice,
              details: dataOffer.details,
            );
          },
        ),
      ),
    );
  }

  void showAboutForgetPassword(Widget widget) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 310.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: kContainerBottomSheet,
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              SizedBox(height: 20.h),
              widget,
            ],
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      elevation: 4,
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h - 180, w, h);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
