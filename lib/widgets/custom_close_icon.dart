import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomCloseIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.offAllNamed(AppRoutes.welcomeScreen);
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
}