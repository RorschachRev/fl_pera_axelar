import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../wallets_controller.dart';

class WalletsIndicator extends StatelessWidget {
  final controller = Get.put(WalletsController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < wallets.length; i++)
              Container(
                margin: EdgeInsets.all(3),
                width: 8,
                height: 9,
                decoration: BoxDecoration(
                    color: i == controller.activeWallet.value
                        ? Colors.blue
                        : Colors.black26,
                    shape: BoxShape.circle),
              )
          ],
        ),
      ),
    );
  }
}
