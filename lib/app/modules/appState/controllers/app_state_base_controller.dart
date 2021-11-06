import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppStateBaseController extends GetxController {
  @protected
  RxBool _isDarkModeOn = Get.isDarkMode.obs;

  RxBool get isDarkModelOn => _isDarkModeOn;

  // toggle
  void toggleTheme() {
    _isDarkModeOn.toggle();
    _changeThemeMode();
  }

  // switchToDark
  void switchToDark() {
    _isDarkModeOn = true.obs;
    _changeThemeMode();
  }

  // switchToLight
  void switchToLight() {
    _isDarkModeOn = false.obs;
    _changeThemeMode();
  }

  //* ---------------- PRIVATE FUNCTIONS --------------------------------
  void _changeThemeMode() {
    Get.changeThemeMode(
        _isDarkModeOn.isTrue ? ThemeMode.dark : ThemeMode.light);
  }
}
