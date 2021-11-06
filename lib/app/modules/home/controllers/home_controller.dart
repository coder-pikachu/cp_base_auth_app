import 'package:cp_base_auth_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  goToThemeSwitcher() {
    Get.offNamed(Routes.THEME_SWITCHER);
  }
}
