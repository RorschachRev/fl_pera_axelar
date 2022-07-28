import '../controller/request_currency_on_controller.dart';
import 'package:get/get.dart';

class RequestCurrencyOnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestCurrencyOnController());
  }
}
