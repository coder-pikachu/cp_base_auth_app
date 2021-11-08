import 'package:get/get.dart';

import '../controllers/theme_switcher_controller.dart';

class ThemeSwitcherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeSwitcherController>(
      () => ThemeSwitcherController(),
    );
  }
}
