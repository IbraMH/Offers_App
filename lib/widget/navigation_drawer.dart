import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_menu/presntation/view/call_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/conditions_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/favorite_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/notification_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/packages_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/privacy_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/questions_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/settings_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/vip_offers_screen.dart';
import 'package:offers_app/features/feature_menu/presntation/view/used_offers_screen.dart';
import 'package:offers_app/widget/custome_text.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> _listNaveItem = [];

  @override
  void initState() {
    AddNaveItem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BGroundSplash,
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Row(
            children: [
              SizedBox(width: 16.w),
              GestureDetector(
                  onTap: () {
                    Get.back();
                    print('asdasd ${_listNaveItem.length}');
                  },
                  child: Image.asset(
                    'assets/images/arrow_back.png',
                    width: 17.w,
                    height: 17.h,
                    color: TitleTextSplash,
                  )),
            ],
          ),
          SizedBox(height: 10.h),
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return ItemDrawer(_listNaveItem[index], context);
              },
              itemCount: _listNaveItem.length,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(() => SettingsScreen(),
                        transition: Transition.rightToLeftWithFade);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/svg/settings.svg'),
                      SizedBox(width: 11.w),
                      CustomeText(
                        title: 'الاعدادات',
                        fontSize: 18.sp,
                        color: kBackGroundIconMenuUnSelected,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    CustomeText(
                      title: 'تسجيل خروج',
                      fontSize: 18.sp,
                      color: kBackGroundIconMenuUnSelected,
                    ),
                    SizedBox(width: 11.w),
                    SvgPicture.asset('assets/svg/logout.svg'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget ItemDrawer(NavMenuItem? mNavMenuItem, BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 16.w, end: 16.w),
      // decoration: BoxDecoration(
      //     ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 1, right: 1),
            child: Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  end: 10.w,
                  start: 10.w,
                ),
                child: ListTile(
                  title: CustomeText(
                    title: mNavMenuItem!.title.toString(),
                    color: TitleTextSplash,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  trailing: mNavMenuItem.id == 2
                      ? SvgPicture.asset('assets/svg/refresh.svg',color: TitleTextLogin,)
                      : SvgPicture.asset('assets/svg/chevrons.svg'),
                  onTap: () async {
                    switch (mNavMenuItem.id) {
                      case 0:
                        {
                          /*         Get.offAll(() => HomePageScreen(),
                                   transition: Transition.rightToLeftWithFade);*/
                          Get.to(() => FavoriteScreen(),
                              transition: Transition.rightToLeftWithFade);
                          break;
                        }
                      case 1:
                        {
                          Get.to(() => UsedOffersScreen(),
                              transition: Transition.rightToLeftWithFade);
                          break;
                        }
                      case 3:
                        {
                          Get.to(() => VipOffersScreen(),
                              transition: Transition.rightToLeftWithFade);
                          break;
                        }
                      case 4:
                        {
                          Get.to(() => PackagesScreen(),
                              transition: Transition.rightToLeftWithFade);
                          break;
                        }

                      case 5:
                        {
                          Get.to(() => NotificationScreen(),
                              transition: Transition.rightToLeftWithFade);

                          break;
                        }
                      case 6:
                        {
                          Get.to(() => PrivacyScreen(),
                              transition: Transition.rightToLeftWithFade);
                          break;
                        }
                      case 7:
                        {
                          Get.to(() => ConditionsScreen(),
                              transition: Transition.rightToLeftWithFade);

                          break;
                        }
                      case 8:
                        {
                          Get.to(() => QuestionsScreen( ),
                              transition: Transition.rightToLeftWithFade);

                          break;
                        }

                      case 9:
                        {
                          Get.to(() => CallScreen(),
                              transition: Transition.rightToLeftWithFade);

                          break;
                        }
                      //      case 1:
                      //        {
                      //          Get.to(() => ViewAboutUs(),
                      //              transition: Transition.rightToLeftWithFade);
                      //
                      //          break;
                      //        }
                      //      case 5:
                      //        {
                      //          Get.to(() => ViewInfoData(),transition:Transition.rightToLeftWithFade );
                      //
                      //          break;
                      //        }
                      //      case 4:
                      //        {
                      //          ShareAPP();
                      //
                      //          break;
                      //        }
                      //      case 3:
                      //        {
                      //          RateApp();
                      //          break;
                      //        }
                      //      case 6:
                      //        {
                      //          Get.to(
                      //              () => ViewRegister(
                      //                    isEditeProfile: true,
                      //                  ),
                      //              transition: Transition.rightToLeftWithFade);
                      //          break;
                      //        }
                      //      case 7:
                      //        {
                      //          await PreferenceUtils.setLogin(false);
                      //          await PreferenceUtils.setToken("");
                      //       /*   Get.offAll(() => HomePageScreen(),
                      //              transition: Transition.rightToLeftWithFade);*/
                      //          Get.offAll(() => ViewAllProduct(entityCategories: getIt<GetCategoriesList>().listCategories[0].listSubCat![0]!,),
                      //              transition: Transition.rightToLeftWithFade);
                      //          break;
                      //        }
                      //      case 8:
                      //        {
                      //          break;
                      //        }
                    }

                    //   Get.to(mNavMenuItem.Destincation!());

                    /*       if (mNavMenuItem!.id == 3) {
                          if (mNavMenuItem.open!) {
                            mNavMenuItem.open = false;
                          } else {
                            mNavMenuItem.open = true;
                          }
                          setState(() {});
                        } else if (mNavMenuItem.id == 7) {
                        } else if (mNavMenuItem.id == 8) {
                          _launchURL();
                        } else if (mNavMenuItem.id == 9) {
                          Share.share(
                              'https://play.google.com/store/apps/details?id=com.menacoders.havana',
                              subject: 'Share!');
                        }*/
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  Future<void> AddNaveItem() async {
    NavMenuItem navMenuItem00 = NavMenuItem(title: 'المفضلة', id: 0);
    NavMenuItem navMenuItem0001 = NavMenuItem(title: 'العروض المستخدمة', id: 1);
    NavMenuItem navMenuItem0 = NavMenuItem(title: "الموقع الجغرافي", id: 2);
    NavMenuItem navMenuItem01 = NavMenuItem(title: "vip عروض", id: 3);
    NavMenuItem navMenuItem1 = NavMenuItem(title: 'الباقات', id: 4);
    NavMenuItem navMenuItem2 = NavMenuItem(title: 'الاشعارات', id: 5);
    NavMenuItem navMenuItem3 = NavMenuItem(title: 'الخصوصية', id: 6);
    NavMenuItem navMenuItem4 = NavMenuItem(title: 'شروط واحكام', id: 7);
    NavMenuItem navMenuItem5 = NavMenuItem(title: 'اسئلة', id: 8);
    NavMenuItem navMenuItem6 = NavMenuItem(title: 'اتصل بنا', id: 9);

    // NavMenuItem navMenuItem5 = NavMenuItem(
    //     title: kPrivacyPolicy.tr,
    //     id: 5,
    //     image: "assets/icons/icon_privacy_policy.svg");
    // NavMenuItem navMenuItem6 = NavMenuItem(
    //     title: kSignout.tr, id: 7, image: "assets/icons/Log_out.svg");

    // _listNaveItem.add(navMenuItem01);
    // if (await PreferenceUtils.isLogin()) {
    _listNaveItem.add(navMenuItem00);
    _listNaveItem.add(navMenuItem0001);
    //
    //   _listNaveItem.add(navMenuItem001);
    //    _listNaveItem.add(navMenuItem000);
    //
    // } else {
    _listNaveItem.add(navMenuItem0);
    // }
    _listNaveItem.add(navMenuItem01);
    _listNaveItem.add(navMenuItem1);
    _listNaveItem.add(navMenuItem2);
    _listNaveItem.add(navMenuItem3);
    _listNaveItem.add(navMenuItem4);
    _listNaveItem.add(navMenuItem5);
    _listNaveItem.add(navMenuItem6);
    // if (await PreferenceUtils.isLogin()) {
    //   _listNaveItem.add(navMenuItem6);
    // }
    setState(() {});
    //_listNaveItem.add(navMenuItem5);
    //   SharedPreferenceR1.getInstancee().SetLogin(false);
  }
}

class NavMenuItem {
  String? title;
  GestureTapCallback? Destincation;
  int? id;
  bool? open;

  //List<NavMenuItem?>listNavMenuItem;
  NavMenuItem({this.title, this.Destincation, this.id, this.open = false});
}
