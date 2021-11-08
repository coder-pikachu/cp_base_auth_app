import 'package:cp_base_auth_app/app/modules/appState/controllers/app_state_controller.dart';
import 'package:cp_base_auth_app/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ThemeSwitcherController extends GetxController {

  AppStateController appStateController = Get.find();
  //TODO: Implement ThemeSwitcherController

  gotoHomePage() {
    Get.offNamed(Routes.HOME);
  }

  //Textfield controller
  TextEditingController _displayNameTextFieldcontroller = TextEditingController();

  TextEditingController get displayNameTextFieldcontroller =>
      _displayNameTextFieldcontroller;

  @override
  void onInit() {
    displayNameTextFieldcontroller.text = appStateController.userName.value;
  }
}
