// ignore_for_file: always_specify_types

import 'package:get/get.dart';
import 'package:offers_app/features/feature_splash/presntation/view/splash_screen.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
    // GetPage(
    //
    //   name: Routes.HOME,
    //   // binding: HomeBinding(),
    //
    //   page: () => HomePageScreen(),
    // ),
  ];
}
