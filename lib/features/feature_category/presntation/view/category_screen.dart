import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:offers_app/features/feature_category/presntation/widget/container_category.dart';
import 'package:offers_app/features/feature_category/presntation/widget/data_category.dart';
import 'package:offers_app/features/feature_sup_category/presntation/view/sup_category_screen.dart';
import 'package:offers_app/widget/custome_text.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  List<DataCategory> listDataCategory = [
    DataCategory(image: 'assets/images/restaurant.png', title: 'مطاعم'),
    DataCategory(image: 'assets/images/online-shopping.png', title: 'متاجر'),
    DataCategory(image: 'assets/images/dress.png', title: 'ملابس'),
    DataCategory(image: 'assets/images/shopping-bag.png', title: 'بقالات'),
    DataCategory(image: 'assets/images/perfume.png', title: 'عطور'),
    DataCategory(image: 'assets/images/coffee.png', title: 'كافيهات'),
    DataCategory(image: 'assets/images/sneakers.png', title: 'احذية'),
    DataCategory(image: 'assets/images/pearl-necklace.png', title: 'اكسسوارات'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listDataCategory.length,
      padding: EdgeInsets.all(5.h),
      // physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        DataCategory dataCategory = listDataCategory.elementAt(index);
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: ContainerCategory(image: dataCategory.image, title: dataCategory.title,onTap: (){Get.to(SupCategoryScreen());}),
        );
      },
    );
  }
}


