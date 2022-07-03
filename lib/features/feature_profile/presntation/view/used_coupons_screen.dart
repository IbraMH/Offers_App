// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:offers_app/core/app_colors.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:offers_app/features/feature_profile/presntation/widget/custome_profile_bar.dart';
// import 'package:offers_app/features/feature_profile/presntation/widget/data_time_offers.dart';
// import 'package:offers_app/features/feature_profile/presntation/widget/item_time_offers.dart';
// import 'package:offers_app/localization/lang/message.dart';
// import 'package:offers_app/widget/custom_textfilled_auth_app.dart';
// import 'package:offers_app/widget/custome_btn.dart';
// import 'package:offers_app/widget/custome_text.dart';
//
// class UsedCouponsScreen extends StatefulWidget {
//   const UsedCouponsScreen({Key? key}) : super(key: key);
//
//   @override
//   State<UsedCouponsScreen> createState() => _UsedCouponsScreenState();
// }
//
// class _UsedCouponsScreenState extends State<UsedCouponsScreen> {
//   TextEditingController? _textEditingControllerPromoCode;
//
//   List<DataTimeOffers> listDataTimeOffers = [
//     DataTimeOffers(title: 'asd128F54D', numOffer: 5, statusOffer: true),
//     DataTimeOffers(title: '2sfg5', numOffer: 3, statusOffer: false),
//     DataTimeOffers(title: 'tr43', numOffer: 4, statusOffer: false),
//   ];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     _textEditingControllerPromoCode = TextEditingController();
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _textEditingControllerPromoCode!.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: BGroundSplash,
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               CustomeProfileBar(
//                 title: kUsedCoupons.tr,
//               ),
//               SizedBox(height: 48.h),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.w),
//                 child: Column(
//                   children: [
//                     SvgPicture.asset('assets/svg/discount-pana.svg'),
//                     SizedBox(height: 25.h),
//                     CustomTextFilledAuthApp(
//                       lable: kPromoCode.tr,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return kFiledNullError.tr;
//                         }
//                         return null;
//                       },
//                       controller: _textEditingControllerPromoCode,
//                       suffixIcon: 'assets/images/tag.png',
//                       hintText: kPromoCode.tr,
//                       textInputType: TextInputType.name,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 25.h),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 40.w),
//                 child: SizedBox(
//                   height: 150.h,
//                   child: ListView.builder(
//                     itemCount: listDataTimeOffers.length,
//                     itemBuilder: (context, index) {
//                       DataTimeOffers dataTimeOffers =
//                           listDataTimeOffers.elementAt(index);
//                       return ItemTimeOffers(
//                         title: dataTimeOffers.title,
//                         numOffers: dataTimeOffers.numOffer,
//                         statusOffers: dataTimeOffers.statusOffer!,
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 50.h),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 80.w),
//                 child: CustomeBtn(
//                   pressBtn: (){},
//                   title: kActivation.tr,
//                   textColor: Colors.white,
//                   btnColor: TitleTextSplash,
//                   widthBtn: double.infinity,
//                   fontSize: 20.sp,
//                   heightBtn: 55.h,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
