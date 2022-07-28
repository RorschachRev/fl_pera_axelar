import '../controller/request_currency_based_controller.dart';
import 'package:get/get.dart';

class RequestCurrencyBasedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestCurrencyBasedController());
  }
}
