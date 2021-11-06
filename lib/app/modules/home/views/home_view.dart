import 'package:cp_base_auth_app/app/modules/appState/controllers/app_state_controller.dart';
import 'package:cp_base_auth_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView {

  //final AppStateController appState = Get.put(AppStateController());

  @override
  Widget build(BuildContext context) {

    HomeController homeController = Get.find<HomeController>();
    AppStateController appStateController = Get.find<AppStateController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Clicks: ${homeController.count}")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                homeController.kahitari();
              },
              child: Text('Add Count'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                homeController.kahitariVegla();
              },
              child: Text('Remove Count'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //controller.changeName();
                Get.snackbar('Going splash screen!', 'Off we go!',
                    snackbarStatus: (status) {
                      if (status == SnackbarStatus.CLOSED) Get.offNamed(Routes.SPLASH_SCREEN);
                    });
              },
              child: Icon(Icons.home),
            )
            //ElevatedButton(onPressed: {, child: Text('mode'))
          ],
        ),
      ),
    );
  }
}
