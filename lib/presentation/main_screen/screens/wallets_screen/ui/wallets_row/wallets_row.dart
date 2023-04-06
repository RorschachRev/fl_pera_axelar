import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/main_screen/screens/wallets_screen/ui/wallets_row/add_new_wallet_button.dart';
import 'package:application1/presentation/main_screen/screens/wallets_screen/ui/wallets_row/wallets.dart';
import 'package:flutter/material.dart';

import '../../wallets_controller.dart';

class WalletsRow extends StatelessWidget {
  final controller = Get.put(WalletsController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wallets(),
        AddNewWalletButton(),
      ],
    );
  }
}
