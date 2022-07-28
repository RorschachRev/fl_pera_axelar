import '/core/app_export.dart';
import 'package:application1/presentation/request_preferences_usd_screen/models/request_preferences_usd_model.dart';
import 'package:flutter/material.dart';

class RequestPreferencesUsdController extends GetxController {
  TextEditingController priceController = TextEditingController();

  Rx<RequestPreferencesUsdModel> requestPreferencesUsdModelObj =
      RequestPreferencesUsdModel().obs;

  RxBool checkbox = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    requestPreferencesUsdModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    requestPreferencesUsdModelObj.value.dropdownItemList.refresh();
  }
}
