import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_main/presntation/widget/container_offers.dart';
import 'package:offers_app/features/feature_main/presntation/widget/data_offers.dart';
import 'package:offers_app/features/feature_search/presntation/widget/container_store.dart';
import 'package:offers_app/features/feature_search/presntation/widget/data_last_search.dart';
import 'package:offers_app/features/feature_search/presntation/widget/item_last_search.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';
import 'package:offers_app/widget/text_filed_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  TextEditingController? searchQuery;

  List<DataLastSearch> dataLast = [
    DataLastSearch(title: 'عرض توصيل مجاني'),
    DataLastSearch(title: 'متجر سيدتي'),
    DataLastSearch(title: 'مطعم البيك'),
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
    searchQuery = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFiledSearch(
                searchQuery: searchQuery!,
                pressClose: () {
                  setState(() {
                    searchQuery!.clear();
                  });
                },
              ),
            ),
            SizedBox(height: 25.h),
            CustomeText(
              title: kLastSearched.tr,
              fontSize: 13.sp,
              color: kTextGray,
            ),
            SizedBox(height: 15.h),
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                itemCount: dataLast.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  DataLastSearch dataLastSearch = dataLast.elementAt(index);
                return ItemLastSearch(title: dataLastSearch.title);
              },),
            ),
            SizedBox(height: 15.h),
            CustomeText(
              title: kOffersLike.tr,
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
            SizedBox(height: 20.h),
            CustomeText(
              title: kChoseYou.tr,
              fontSize: 15.sp,
              color: kTitleListView,
            ),
            SizedBox(height: 15.h),
            SizedBox(
              height: 280.h,
              child: ListView.builder(
                itemCount: dataOffers.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  DataOffers dataOffer = dataOffers.elementAt(index);
                  return ContainerStore(
                    image: dataOffer.image,
                    title: dataOffer.title,
                    details: dataOffer.details,
                    numProduct: 20,
                  );
                },
              ),
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}


