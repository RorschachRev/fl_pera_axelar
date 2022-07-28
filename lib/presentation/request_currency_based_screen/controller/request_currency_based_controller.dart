import '/core/app_export.dart';
import 'package:application1/presentation/request_currency_based_screen/models/request_currency_based_model.dart';

class RequestCurrencyBasedController extends GetxController {
  Rx<RequestCurrencyBasedModel> requestCurrencyBasedModelObj =
      RequestCurrencyBasedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
