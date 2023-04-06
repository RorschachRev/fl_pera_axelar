import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../wallets_controller.dart';

class AddNewWalletButton extends StatelessWidget {
  final controller = Get.put(WalletsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 60,
      margin: getMargin(right: 10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: ColorConstant.black9001e,
            width: getHorizontalSize(
              2.00,
            ),
          ),
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              8.00,
            ),
          ),
        ),
        child: TextButton(
          onPressed: () {
            Get.toNamed(AppRoutes.addNewWalletScreen);
          },
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
