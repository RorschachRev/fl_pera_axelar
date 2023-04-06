import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../wallets_controller.dart';

class WalletHeader extends StatelessWidget {
  final controller = Get.put(WalletsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        222.00,
      ),
      margin: getMargin(top: 16, right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Balance"),
          Padding(
            padding: getPadding(
              top: 10,
              bottom: 2,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgMorehoriz,
              height: getVerticalSize(
                4.00,
              ),
              width: getHorizontalSize(
                16.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
