import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class WalletFooter extends StatelessWidget {
  WalletFooter(this.walletName);

  final String walletName;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: getHorizontalSize(
          226.00,
        ),
        margin: getMargin(
          left: 16,
          top: 25,
          right: 16,
          bottom: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: getPadding(
                top: 4,
              ),
              child: Text(
                walletName,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.txtInterSemiBold14.copyWith(
                  height: 1.14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
