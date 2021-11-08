import 'package:cp_base_auth_app/app/modules/appState/controllers/app_state_base_controller.dart';

//Singleton pattern for base controller
class AppStateController extends AppStateBaseController {
  static final AppStateController _instance = AppStateController._internal();

  factory AppStateController() {
    return _instance;
  }
  AppStateController._internal() : super() {
    //TODO: Store in shared preferences
    //switchToLight();
  }
// Make this global / singleton

// Create operations for changing the theme

}
