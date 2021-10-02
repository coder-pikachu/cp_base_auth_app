import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Clicks: ${controller.count}")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                controller.kahitari();
              },
              child: Text('Add Count'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                controller.kahitariVegla();
              },
              child: Text('Remove Count'),
            )
          ],
        ),
      ),
    );
  }
}
