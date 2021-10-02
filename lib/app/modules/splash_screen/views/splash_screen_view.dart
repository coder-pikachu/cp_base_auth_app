import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplashScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '${controller.name} is working',
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
              onPressed: () {
                controller.changeName();
                // Get.snackbar('Going home!', 'Off we go!',
                //     snackbarStatus: (status) {
                //   if (status == SnackbarStatus.CLOSED) Get.toNamed(Routes.HOME);
                // });
              },
              child: Icon(Icons.home),
            )
          ],
        ),
      ),
    );
  }
}
