import '../controller/selecting_an_amount_currency_one_controller.dart';
import 'package:get/get.dart';

class SelectingAnAmountCurrencyOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectingAnAmountCurrencyOneController());
  }
}
