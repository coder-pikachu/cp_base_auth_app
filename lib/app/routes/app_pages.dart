import 'package:get/get.dart';

import 'package:cp_base_auth_app/app/modules/appState/bindings/app_state_binding.dart';
import 'package:cp_base_auth_app/app/modules/appState/views/app_state_view.dart';
import 'package:cp_base_auth_app/app/modules/home/bindings/home_binding.dart';
import 'package:cp_base_auth_app/app/modules/home/views/home_view.dart';
import 'package:cp_base_auth_app/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:cp_base_auth_app/app/modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
  ];
}
