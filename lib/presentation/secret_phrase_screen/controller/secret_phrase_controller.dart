import '/core/app_export.dart';
import 'package:application1/presentation/secret_phrase_screen/models/secret_phrase_model.dart';
import 'package:flutter/material.dart';

class SecretPhraseController extends GetxController {
  TextEditingController headlinesecretController = TextEditingController();

  Rx<SecretPhraseModel> secretPhraseModelObj = SecretPhraseModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    headlinesecretController.dispose();
  }
}
