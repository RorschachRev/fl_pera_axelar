import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class WelcomeCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(
        142.00,
      ),
      width: getSize(
        142.00,
      ),
      margin: getMargin(
        left: 16,
        top: 98,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: ColorConstant.blueA400,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            71.00,
          ),
        ),
      ),
    );
  }
}
