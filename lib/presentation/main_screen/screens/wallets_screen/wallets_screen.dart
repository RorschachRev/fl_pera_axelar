import 'package:application1/presentation/main_screen/screens/wallets_screen/ui/wallets_screen_container.dart';
import 'package:flutter/material.dart';

import 'ui/coins_manager.dart';
import 'ui/wallets_manager.dart';

class WalletsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WalletsScreenContainer(
      children: [
        WalletsManager(),
        CoinsManager(),
      ],
    );
  }
}
