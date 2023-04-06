import 'package:application1/presentation/main_screen/screens/wallets_screen/ui/wallets_row/wallet/wallet.dart';
import 'package:flutter/material.dart';

class Wallets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 180,
      margin: EdgeInsets.all(10),
      child: Wallet(),
    );
  }
}
