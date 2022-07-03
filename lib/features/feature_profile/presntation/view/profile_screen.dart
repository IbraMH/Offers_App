import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_profile/presntation/view/edit_password_screen.dart';
import 'package:offers_app/features/feature_profile/presntation/view/gifts_screen.dart';
import 'package:offers_app/features/feature_profile/presntation/view/interests_screen.dart';
import 'package:offers_app/features/feature_profile/presntation/view/savings_value_screen.dart';
import 'package:offers_app/features/feature_profile/presntation/view/profile_data_screen.dart';
import 'package:offers_app/features/feature_profile/presntation/view/used_coupons_screen.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/container_profile.dart';
import 'package:offers_app/features/feature_profile/presntation/widget/data_profile.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/custome_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<DataProfile> listDataProfile = [
    DataProfile(title: kProfileData.tr, id: 1),
    DataProfile(title: kSavingsValue.tr, id: 2),
    DataProfile(title: kInterests.tr, id: 3),
    DataProfile(title: kGifts.tr, id: 4),
    DataProfile(title: kPassword.tr, id: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        CircleAvatar(
          radius: 60.r,
          backgroundImage: AssetImage('assets/images/Ellipse.png'),
        ),
        SizedBox(height: 15.h),
        CustomeText(
          title: 'محمد بن عبد العزيز',
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: kNameProfile,
        ),
        SizedBox(height: 5.h),
        CustomeText(
          title: '0532145937',
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: kNameProfile,
        ),
        SizedBox(height: 70.h),
        Expanded(
          child: ListView.builder(
            itemCount: listDataProfile.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              DataProfile dataProfile = listDataProfile.elementAt(index);
              return ContainerProfile(
                title: dataProfile.title,
                pressCard: () {
                  if(dataProfile.id==1){
                    Get.to(ProfileDataScreen());
                  }else if(dataProfile.id==2){
                    Get.to(SavingsValueScreen());
                  }else if(dataProfile.id==3){
                    Get.to(InterestsScreen());
                  } else if(dataProfile.id==4){
                    Get.to(GiftsScreen());
                  }else if(dataProfile.id==5){
                    Get.to(EditPasswordScreen());
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
