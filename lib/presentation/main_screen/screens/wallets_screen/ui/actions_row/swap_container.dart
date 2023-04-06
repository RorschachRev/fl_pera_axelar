import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SwapContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        left: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: getMargin(
              left: 2,
              right: 2,
            ),
            padding: EdgeInsets.all(2),
            child: ElevatedButton(
              child: CommonImageView(
                svgPath: 'assets/images/img_switch.svg',
              ),
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(52, 52)),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
            ),
            child: Text(
              "lbl_swap".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterRegular14Black900dd.copyWith(
                letterSpacing: 0.07,
                height: 1.43,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
