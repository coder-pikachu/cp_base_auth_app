import 'package:cp_base_auth_app/app/modules/appState/bindings/app_state_binding.dart';
import 'package:get/get.dart';

import '../controllers/theme_switcher_controller.dart';

class ThemeSwitcherBinding extends AppStateBinding {
  @override
  void dependencies() {
    super.dependencies();
    Get.lazyPut<ThemeSwitcherController>(
      () => ThemeSwitcherController(),
    );
  }
}
