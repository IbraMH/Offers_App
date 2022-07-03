import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:offers_app/core/app_colors.dart';
import 'package:offers_app/features/feature_category/presntation/view/category_screen.dart';
import 'package:offers_app/features/feature_main/presntation/view/home_screen.dart';
import 'package:offers_app/features/feature_main/presntation/widget/bn_screen.dart';
import 'package:offers_app/features/feature_main/presntation/widget/custome_main_bar.dart';
import 'package:offers_app/features/feature_main/presntation/widget/tabBarMaterialWidget.dart';
import 'package:offers_app/features/feature_profile/presntation/view/profile_screen.dart';
import 'package:offers_app/features/feature_scan/presntation/view/scan_screen.dart';
import 'package:offers_app/features/feature_search/presntation/view/search_screen.dart';
import 'package:offers_app/localization/lang/message.dart';
import 'package:offers_app/widget/navigation_drawer.dart';


class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {


  int index = 0;

  // List<BottomNavigationScreen> _bnScreen = <BottomNavigationScreen>[
  //   BottomNavigationScreen(
  //     HomeScreen(),
  //   ),
  //   BottomNavigationScreen(
  //     SearchScreen(),
  //   ),
  //   BottomNavigationScreen(
  //     CategoriesScreen(),
  //   ),
  //   BottomNavigationScreen(
  //     ProfileScreen(),
  //   ),
  // ];

  final _bnScreen = <Widget>[
    HomeScreen(),
    SearchScreen(),
    ScanScreen(),
    CategoriesScreen(),
    ProfileScreen(),
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BGroundSplash,
        resizeToAvoidBottomInset: false,
        key: _key,
        drawer: NavigationDrawer(),
        floatingActionButton: Container(
          decoration: BoxDecoration(
              boxShadow: [
          BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 10,
          offset: Offset(0, -10), // changes position of shadow
        ),
          ],
          borderRadius: BorderRadius.circular(42.r),
            border: Border.all(
              color: Colors.white,
              width: 7.w
            ),
          ),
          child: FloatingActionButton(
            onPressed: () {
              setState((){
                index = 2;
              });
            },
            elevation: 5,
            backgroundColor: TitleTextLogin,
            child: SvgPicture.asset('assets/svg/scan.svg'),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Column(
          children: [
            CustomeMainBar(index: index,title: index==1?kSearch.tr:index==3?kCategories.tr:index==4?kProfile.tr:index==2?'QR':null,onTapMenu: () => _key.currentState!.openDrawer(),),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: _bnScreen[index],
              ),
            ),
          ],
        ),//_bnScreen[index],
        bottomNavigationBar: SizedBox(
          height: 60.h,
          child: TabBarMaterialWidget(
            index: index,
            onChangedTab: onChangedTab,
          ),
        ),

        //widget.indexid == 1 ? _bnScreen.elementAt(_currentIndex = 1).widget : _bnScreen.elementAt(_currentIndex).widget,
         /*bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            // boxShadow: [
            //   BoxShadow(
            //       color: AppColors.main_screen_selected_icon.withOpacity(0.5),
            //       spreadRadius: 0,
            //       blurRadius: 5),
            // ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Colors.white,
              elevation: 0,
              iconSize: 30,
              // unselectedItemColor: AppColors.main_screen_un_selected_icon,
              // selectedItemColor: AppColors.main_screen_selected_icon,
              currentIndex: _currentIndex,
              //widget.indexid == 1 ? _currentIndex = 1 : _currentIndex,
              onTap: (int selectedIndex) {
                setState(() {
                  _currentIndex = selectedIndex;
                });
              },

              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/svg/home.svg'),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/svg/search.svg'),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/svg/category.svg'),
                  label: 'home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/svg/user.svg'),
                  label: 'home',
                ),
              ],
            ),
          ),
        ),*/
      ),
    );

  }
  void onChangedTab(int index){
    setState((){
      this.index = index;
    });
  }
}
