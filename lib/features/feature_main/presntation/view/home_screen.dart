import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_main/presntation/widget/container_offers.dart';
import 'package:offers_app/features/feature_main/presntation/widget/data_offers.dart';
import 'package:offers_app/features/feature_store/presntation/view/store_screen.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? controller;
  int selectedImage = 0;

  var listSlider = [
    'assets/images/slider1.png',
    'assets/images/slider1.png',
    'assets/images/slider1.png',
  ];

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
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeText(
            title: kWelcome.tr + ' محمد',
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: TitleTextLogin ,
          ),
          SizedBox(height: 5.h),
          CustomeText(
            title: kGetBestOffers.tr,
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: kTextGray,
          ),
          SizedBox(height: 15.h),
          SizedBox(
            height: 150.h,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              itemCount: listSlider.length,
              clipBehavior: Clip.antiAlias,
              onPageChanged: (index) {
                setState(() {
                  selectedImage = index;
                });
              },
              itemBuilder: (context, index) {
                String listImageSlider = listSlider.elementAt(index);
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Card(
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Image.asset(
                      listImageSlider,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      isAntiAlias: true,
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: SmoothPageIndicator(
                    controller: controller!,
                    // PageController
                    count: listSlider.length,
                    effect: WormEffect(
                        dotWidth: 8.0.w,
                        dotHeight: 8.0.w,
                        activeDotColor: TitleTextSplash),
                    // your preferred effect
                    onDotClicked: (_currentLocation) {}),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          CustomeText(
            title: kBestOffers.tr,
            fontSize: 15.sp,
            color: kTitleListView,
          ),
          SizedBox(height: 15.h),
          SizedBox(
            height: 245.h,
            child: ListView.builder(
              itemCount: dataOffers.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                DataOffers dataOffer = dataOffers.elementAt(index);
                return ContainerOffers(
                  image: dataOffer.image,
                  title: dataOffer.title,
                  lastPrice: dataOffer.lastPrice,
                  offersPrice: dataOffer.offerPrice,
                  details: dataOffer.details,
                  onTap: (){
                    Get.to(StoreScreen());
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20.h),
          CustomeText(
            title: kBestOffers.tr,
            fontSize: 15.sp,
            color: kTitleListView,
          ),
          SizedBox(height: 15.h),
          SizedBox(
            height: 245.h,
            child: ListView.builder(
              itemCount: dataOffers.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                DataOffers dataOffer = dataOffers.elementAt(index);
                return ContainerOffers(
                  image: dataOffer.image,
                  title: dataOffer.title,
                  lastPrice: dataOffer.lastPrice,
                  offersPrice: dataOffer.offerPrice,
                  details: dataOffer.details,
                );
              },
            ),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}


