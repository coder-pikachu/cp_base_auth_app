import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/app_state_controller.dart';

class AppStateView extends GetView<AppStateController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppStateView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AppStateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
