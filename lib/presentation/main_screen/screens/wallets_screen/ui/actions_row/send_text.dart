import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SendText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 4,
      ),
      child: Text(
        "lbl_send".tr,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: AppStyle.txtInterRegular14Black900dd.copyWith(
          letterSpacing: 0.07,
          height: 1.43,
        ),
      ),
    );
  }
}
