import 'package:get/get.dart';

import '../controllers/app_state_controller.dart';

class AppStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppStateController>(
      () => AppStateController(),
    );
  }
}
