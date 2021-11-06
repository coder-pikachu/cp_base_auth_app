import 'package:cp_base_auth_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView {
  //final AppStateController appState = Get.put(AppStateController());

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  homeController.goToThemeSwitcher();
                },
                child: Text('Change Theme'))
          ],
        ),
      ),
    );
  }
}
