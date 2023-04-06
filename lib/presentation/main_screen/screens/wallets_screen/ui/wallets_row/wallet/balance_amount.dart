import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class BalanceAmount extends StatelessWidget {
  BalanceAmount(this.amount);
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(top: 10),
        child: Padding(
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Text(
            "\$ ${amount}",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppStyle.txtInterMedium20.copyWith(
              height: 0.80,
            ),
          ),
        ));
  }
}
