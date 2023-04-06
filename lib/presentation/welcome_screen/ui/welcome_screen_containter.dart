import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class WelcomeScreenContainer extends StatelessWidget {

  const WelcomeScreenContainer({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: children,
          ),
        ),
      ),
    );
  }
}
