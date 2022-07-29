import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

GestureDetector CustomCloseIcon(String address) {
  return GestureDetector(
    onTap: () {
      Get.offAllNamed(address);
    },
    child: CommonImageView(
      svgPath: ImageConstant.imgClose,
      height: getSize(
        14.00,
      ),
      width: getSize(
        14.00,
      ),
    ),
  );
}