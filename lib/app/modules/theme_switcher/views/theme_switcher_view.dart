

import 'package:cp_base_auth_app/app/modules/appState/controllers/app_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

import 'package:get/get.dart';

import '../controllers/theme_switcher_controller.dart';

class ThemeSwitcherView extends GetView {
  final AppStateController appStateController = Get.find<AppStateController>();
  final ThemeSwitcherController themeSwitcherController =
      Get.find<ThemeSwitcherController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        leading: IconButton(
          onPressed: themeSwitcherController.gotoHomePage,
          icon: Icon(Icons.home),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your name',
              ),
                controller: themeSwitcherController.displayNameTextFieldcontroller,
                onChanged: appStateController.handleNameChanged,
                ),
            ),
            SizedBox(height: 20),
            ElevatedButton(

              onPressed: () {
                appStateController.toggleTheme();
              },
              child: Text('Toggle Theme'),
            ),
            SizedBox(height: 20),
            Text("Change Theme color"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  barrierDismissible: false,
                  title: 'Choose a theme color',
                  content: Container(
                    height: 100,
                    width: 400,
                    child: MaterialColorPicker(
                        circleSize: 200,
                        shrinkWrap: false,
                        spacing: 18,
                        allowShades: false,
                        colors: [
                          Colors.amber,
                          Colors.red,
                          Colors.green,
                          Colors.blue
                        ],
                        onColorChange: (Color color) {
                          print(color.toString());
                        },
                        onMainColorChange: (ColorSwatch? value) {
                          print(value.toString());

                          appStateController
                              .changeThemeColor(Color(value?.value ?? 0));
                          Get.close(1);
                        },
                        selectedColor:
                            appStateController.primaryThemeColor.value),
                  ),
                );
              },
              child: Text('Choose color'),
            ),
          ],
        ),
      ),
    );
  }
}
