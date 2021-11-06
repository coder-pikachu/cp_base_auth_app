import 'package:get/get.dart';

class AppStateController extends GetxController {
    //TODO: Implement AppStateController
    RxBool isDarkModelOn = false.obs;

    AppStateController(){
        print("App State Created!");
    }
}
