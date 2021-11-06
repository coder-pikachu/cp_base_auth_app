import 'package:get/get.dart';

import 'package:cp_base_auth_app/app/modules/appState/controllers/app_state_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<AppStateController>(
      () => AppStateController(),
    );
  }
}
