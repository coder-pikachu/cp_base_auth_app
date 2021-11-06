import 'package:cp_base_auth_app/app/modules/appState/bindings/app_state_binding.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends AppStateBinding {
  @override
  void dependencies() {
    // Tell AppStateBinding to collect its dependencies
    super.dependencies();

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
