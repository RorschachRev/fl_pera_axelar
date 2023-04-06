import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class WelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: getHorizontalSize(
          328.00,
        ),
        margin: getMargin(
          left: 16,
          top: 62,
          right: 16,
        ),
        child: Text(
          "msg_welcome_to_cro".tr,
          maxLines: null,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterMedium40.copyWith(
            letterSpacing: 0.25,
          ),
        ),
      ),
    );
  }
}
