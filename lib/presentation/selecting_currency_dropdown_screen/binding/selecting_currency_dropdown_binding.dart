import '../controller/selecting_currency_dropdown_controller.dart';
import 'package:get/get.dart';

class SelectingCurrencyDropdownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectingCurrencyDropdownController());
  }
}
