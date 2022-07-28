import '../controller/request_preferences_usd_controller.dart';
import 'package:get/get.dart';

class RequestPreferencesUsdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestPreferencesUsdController());
  }
}
