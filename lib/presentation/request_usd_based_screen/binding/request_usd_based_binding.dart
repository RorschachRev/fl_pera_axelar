import '../controller/request_usd_based_controller.dart';
import 'package:get/get.dart';

class RequestUsdBasedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestUsdBasedController());
  }
}
