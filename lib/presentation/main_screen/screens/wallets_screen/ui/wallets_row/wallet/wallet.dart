import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/main_screen/screens/wallets_screen/ui/wallets_row/wallet/balance_amount.dart';
import 'package:application1/presentation/main_screen/screens/wallets_screen/ui/wallets_row/wallet/wallet_footer.dart';
import 'package:application1/presentation/main_screen/screens/wallets_screen/ui/wallets_row/wallet/wallet_header.dart';
import 'package:flutter/material.dart';

import '../../../wallets_controller.dart';

class Wallet extends StatelessWidget {
  final controller = Get.put(WalletsController());

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: wallets.length,
        pageSnapping: true,
        onPageChanged: (page) {
          controller.activeWallet.value = page;
        },
        itemBuilder: (context, pagePosition) {
          return Container(
            alignment: Alignment.center,
            decoration: AppDecoration.gradientTealA2006dTeal3002d.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WalletHeader(),
                    BalanceAmount(wallets[pagePosition].walletBalanceUSD),
                  ],
                ),
                WalletFooter(wallets[pagePosition].name),
              ],
            ),
          );
        });
  }
}
