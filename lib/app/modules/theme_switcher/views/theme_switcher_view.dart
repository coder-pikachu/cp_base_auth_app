import 'package:cp_base_auth_app/app/modules/appState/controllers/app_state_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/theme_switcher_controller.dart';

final AppStateController appStateController = Get.find<AppStateController>();
final ThemeSwitcherController themeSwitcherController =
    Get.find<ThemeSwitcherController>();

class ThemeSwitcherView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThemeSwitcherView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                themeSwitcherController.gotoHomePage();
              },
              child: Icon(Icons.home),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                appStateController.toggleTheme();
              },
              child: Text('Toggle Theme'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                appStateController.switchToDark();
              },
              child: Text('Dark Theme'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                appStateController.switchToLight();
              },
              child: Text('Light Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
