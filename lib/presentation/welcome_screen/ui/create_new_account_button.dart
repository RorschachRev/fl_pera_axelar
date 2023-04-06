import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class CreateNewAccountButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ElevatedButton(
        child: Text('Create new account'),
        onPressed: () {
          Get.toNamed(AppRoutes.usernameCreationScreen);
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
        ),
      ),
    );
  }
}
