import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class ImportWalletButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: OutlinedButton(
        child: Text('Import wallet'),
        onPressed: () {
          //Navigator.of(context).pushNamed('/import');
          Get.toNamed(AppRoutes.importWallet);
        },
      ),
    );
  }
}
