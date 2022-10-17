import 'package:get/get.dart';
import 'package:test_project/controllers/launcherController.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<LauncherController>(LauncherController());
  }
}
