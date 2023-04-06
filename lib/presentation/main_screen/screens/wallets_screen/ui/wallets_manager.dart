import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

import 'actions_row/actions_row.dart';
import 'wallets_indicator.dart';
import 'wallets_row/wallets_row.dart';

class WalletsManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          WalletsRow(),
          WalletsIndicator(),
          ActionsRow(),
        ],
      ),
    );
  }
}
