import '/core/app_export.dart';
import 'package:application1/presentation/request_currency_on_screen/models/request_currency_on_model.dart';
import 'package:flutter/material.dart';

class RequestCurrencyOnController extends GetxController {
  TextEditingController searchbarController = TextEditingController();

  Rx<RequestCurrencyOnModel> requestCurrencyOnModelObj =
      RequestCurrencyOnModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchbarController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    requestCurrencyOnModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    requestCurrencyOnModelObj.value.dropdownItemList.refresh();
  }
}
