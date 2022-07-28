import '../controller/request_preferences_controller.dart';
import 'package:get/get.dart';

class RequestPreferencesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestPreferencesController());
  }
}
