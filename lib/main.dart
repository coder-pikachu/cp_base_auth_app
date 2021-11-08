import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/appState/controllers/app_state_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(
      init: AppStateController(),
      initState: (_) {},
      builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            colorScheme: ThemeData.light()
                .colorScheme
                .copyWith(primary: _.primaryThemeColor.value),
          ), // Initial theme
          darkTheme: ThemeData.dark().copyWith(
            colorScheme: ThemeData.dark().colorScheme.copyWith(
                  primary: _.primaryThemeColor.value,
                ),
          ), // Initial dark theme
          color: _.primaryThemeColor.value,
          title: "Login App",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          defaultTransition: Transition.fadeIn,
        );
      },
    );
  }
}
