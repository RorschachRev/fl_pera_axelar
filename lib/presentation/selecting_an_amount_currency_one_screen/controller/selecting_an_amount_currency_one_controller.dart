import '/core/app_export.dart';
import 'package:application1/presentation/selecting_an_amount_currency_one_screen/models/selecting_an_amount_currency_one_model.dart';
import 'package:flutter/material.dart';

class SelectingAnAmountCurrencyOneController extends GetxController {
  TextEditingController priceController1 = TextEditingController();

  Rx<SelectingAnAmountCurrencyOneModel> selectingAnAmountCurrencyOneModelObj =
      SelectingAnAmountCurrencyOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceController1.dispose();
  }
}
