import 'package:application1/presentation/welcome_screen/ui/create_new_account_button.dart';
import 'package:application1/presentation/welcome_screen/ui/page_indicator_container.dart';
import 'package:application1/presentation/welcome_screen/ui/welcome_circle.dart';
import 'package:application1/presentation/welcome_screen/ui/welcome_mesage.dart';
import 'package:application1/presentation/welcome_screen/ui/welcome_screen_containter.dart';
import 'package:flutter/material.dart';

import 'ui/import_wallet_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreenContainer(children: [
      WelcomeCircle(),
      WelcomeMessage(),
      PageIndicatorContainer(),
      CreateNewAccountButton(),
      ImportWalletButton()
    ]);
  }
}
