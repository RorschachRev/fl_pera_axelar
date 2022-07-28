import '../controller/selecting_an_amount_currency_controller.dart';
import 'package:get/get.dart';

class SelectingAnAmountCurrencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectingAnAmountCurrencyController());
  }
}
