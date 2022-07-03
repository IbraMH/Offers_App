import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/features/feature_main/presntation/widget/data_offers.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_chart_type.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
import 'package:offers_app/features/feature_search/presntation/widget/container_store.dart';
import 'package:offers_app/features/feature_store/presntation/view/store_screen.dart';
import 'package:offers_app/features/feature_sup_category/presntation/widget/container_store_grid_sup_category.dart';
import 'package:offers_app/features/feature_sup_category/presntation/widget/container_store_list_sup_category.dart';
import 'package:offers_app/features/feature_sup_category/presntation/widget/container_type.dart';
import 'package:offers_app/features/feature_sup_category/presntation/widget/container_type_sup_category.dart';
import 'package:offers_app/features/feature_sup_category/presntation/widget/data_type_sup_category.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class SupCategoryScreen extends StatefulWidget {
  const SupCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SupCategoryScreen> createState() => _SupCategoryScreenState();
}

class _SupCategoryScreenState extends State<SupCategoryScreen> {
  PageController? controller;
  int selectedImage = 0;
  int? indexList;
  int? isSelectTypeChart = 1;


  var listSlider = [
    'assets/images/slider1.png',
    'assets/images/slider1.png',
    'assets/images/slider1.png',
  ];

  List<DataTypeSupCategory> list = [
    DataTypeSupCategory(title: 'الكل', num: 50),
    DataTypeSupCategory(title: 'بيتزا', num: 5),
    DataTypeSupCategory(title: 'بحري', num: 10),
    DataTypeSupCategory(title: 'مشاوي', num: 12),
    DataTypeSupCategory(title: 'شرقي', num: 22),
    DataTypeSupCategory(title: 'برجر', num: 10),
  ];

  List<DataOffers> dataOffers = [
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 80,
        offerPrice: 70,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 90,
        offerPrice: 60,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 50,
        offerPrice: 40,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 60,
        offerPrice: 50,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 120,
        offerPrice: 100,
        details: 'وصف بسيط وصف وصف وصف وصف وصف'),
  ];

  List<DataOffers> dataOffers2 = [
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 80,
        offerPrice: 70,
        details: 'وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 90,
        offerPrice: 60,
        details: 'وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 50,
        offerPrice: 40,
        details: 'وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 60,
        offerPrice: 50,
        details: 'وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف'),
    DataOffers(
        image: 'assets/images/offers.jpg',
        title: 'اسم المتجر',
        lastPrice: 120,
        offerPrice: 100,
        details: 'وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف وصف بسيط وصف وصف وصف وصف وصف'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        body: Column(
          children: [
            CustomeProfileBar(
              title: 'اسم التصنيف',
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
            SizedBox(height: 20.h),
            SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                padding: EdgeInsetsDirectional.only(start: 16.w),
                itemBuilder: (context, index) {
                  DataTypeSupCategory dataSupCategory = list.elementAt(index);
                  return ContainerTypeSupCategory(
                    title: dataSupCategory.title,
                    num: dataSupCategory.num,
                    select: indexList == index?true:false,
                    onTap: () {
                      setState((){
                        if(indexList != index){
                          indexList = index;
                        }else{
                          indexList = null;
                        }
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  ContainerType(
                    image: 'assets/svg/category2.svg',
                    select: isSelectTypeChart==1?true:false,
                    onTap: (){
                      setState(() {
                        if(isSelectTypeChart != 1){
                          isSelectTypeChart = 1;
                        }else{
                          isSelectTypeChart = null;
                        }
                      });
                    },
                  ),
                  SizedBox(width: 10.w),
                  ContainerType(
                    image: 'assets/svg/menu.svg',
                    select: isSelectTypeChart==2?true:false,
                    sizeImage: 8,
                    onTap: (){
                      setState(() {
                        if(isSelectTypeChart != 2){
                          isSelectTypeChart = 2;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            isSelectTypeChart==1?gridSupCategory():isSelectTypeChart==2?listSupCategory():SizedBox(),
          ],
        ),
      ),
    );
  }


  Widget gridSupCategory(){
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
            mainAxisExtent: 250.h,
          ),
          itemBuilder: (context, index) {
            DataOffers dataOffer = dataOffers.elementAt(index);
            return ContainerStoreGridSupCategory(
              image: dataOffer.image,
              title: dataOffer.title,
              details: dataOffer.details,
              numProduct: 20,
              onTap: (){
                Get.to(StoreScreen());
              },
            );
          },
        ),
      ),
    );
  }
  Widget listSupCategory(){
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: ListView.builder(
          itemCount: dataOffers2.length,
          padding: EdgeInsets.all(5.h),
          itemBuilder: (context, index) {
            DataOffers dataOffer = dataOffers2.elementAt(index);
            return ContainerStoreListSupCategory(
              image: dataOffer.image,
              title: dataOffer.title,
              details: dataOffer.details,
              numProduct: 20,
              onTap: (){
                Get.to(StoreScreen());
              },
            );
          },
        ),
      ),
    );
  }
}
