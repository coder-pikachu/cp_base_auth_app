import 'package:cp_base_auth_app/app/modules/appState/controllers/app_state_controller.dart';
import 'package:cp_base_auth_app/app/modules/home/controllers/home_controller.dart';
import 'package:cp_base_auth_app/app/modules/theme_switcher/controllers/theme_switcher_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView {
  final AppStateController appState = Get.put(AppStateController());
  final ThemeSwitcherController themeSwitcherController = Get.put(ThemeSwitcherController());

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,10,0),
            child: IconButton(
              onPressed: homeController.goToThemeSwitcher,
              icon: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [Obx(() => Text('Hi ${appState.userName}', style: Get.textTheme.headline3))],
        ),
      ),
    );
  }
}
