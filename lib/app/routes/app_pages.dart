import 'package:get/get.dart';

import 'package:cp_base_auth_app/app/modules/home/bindings/home_binding.dart';
import 'package:cp_base_auth_app/app/modules/home/views/home_view.dart';
import 'package:cp_base_auth_app/app/modules/theme_switcher/bindings/theme_switcher_binding.dart';
import 'package:cp_base_auth_app/app/modules/theme_switcher/views/theme_switcher_view.dart';

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
        name: _Paths.THEME_SWITCHER,
        page: () => ThemeSwitcherView(),
        binding: ThemeSwitcherBinding(),
        title: "Hello"),
  ];
}
