import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: getVerticalSize(
          8.00,
        ),
        child: SmoothIndicator(
          offset: 0,
          count: 5,
          axisDirection: Axis.horizontal,
          effect: ScrollingDotsEffect(
            activeDotColor: ColorConstant.black90099,
            dotColor: ColorConstant.black90060,
            dotHeight: getVerticalSize(8.00),
            dotWidth: getHorizontalSize(8.00),
          ),
        ),
      ),
    );
  }
}
