import 'page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class PageIndicatorContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          20.00,
        ),
        width: getHorizontalSize(
          87.00,
        ),
        margin: getMargin(
          left: 16,
          top: 72,
          right: 16,
        ),
        child: PageIndicator(),
      ),
    );
  }
}
