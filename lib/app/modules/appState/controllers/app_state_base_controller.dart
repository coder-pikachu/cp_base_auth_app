import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

@protected
class AppStateBaseController extends GetxController {
  @protected
  RxBool _isDarkModeOn = Get.isDarkMode.obs;

  RxBool get isDarkModelOn => _isDarkModeOn;

  @protected
  Rx<Color> _primaryThemeColor = Colors.amber.obs;

  Rx<Color> get primaryThemeColor => _primaryThemeColor;

  @protected
  RxString _userName = 'User'.obs;

  RxString get userName => _userName;

  handleNameChanged(String newValue) {
    userName.value = newValue;
    //update();
  }

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

  //change Theme colors

  void changeThemeColor(Color newColor) {
    _primaryThemeColor = newColor.obs;
    update();
  }

  //* ---------------- PRIVATE FUNCTIONS --------------------------------
  void _changeThemeMode() {
    Get.changeThemeMode(
        _isDarkModeOn.isTrue ? ThemeMode.dark : ThemeMode.light);
  }
}
