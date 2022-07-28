import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.gray100,
          body: Column(
            children: [
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA700,
                ),
                child: Padding(
                  padding: getPadding(
                    left: 19,
                    top: 17,
                    right: 17,
                    bottom: 17,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 4,
                          bottom: 4,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgMenu,
                          height: getVerticalSize(
                            12.00,
                          ),
                          width: getHorizontalSize(
                            18.00,
                          ),
                        ),
                      ),
                      CommonImageView(
                        svgPath: ImageConstant.imgComputer,
                        height: getSize(
                          21.00,
                        ),
                        width: getSize(
                          21.00,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );

  }


}
