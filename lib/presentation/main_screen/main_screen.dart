import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/presentation/main_screen/wallets_screen.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.gray100,
          body: Stack(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 55.0),
                  child: SingleChildScrollView(
                      child: WalletsScreen()
                  ),
              ),
              Positioned(
                top: 0,
                  child: Container(
                    alignment: Alignment.topCenter,
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
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                    ),
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: getVerticalSize(
                        56.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: size.width,
                            margin: getMargin(
                              bottom: 10,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray103,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                          top: 11,
                                          right: 14,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgCreditcard,
                                          height: getVerticalSize(
                                            18.00,
                                          ),
                                          width: getHorizontalSize(
                                            19.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 14,
                                          top: 3,
                                          right: 14,
                                          bottom: 8,
                                        ),
                                        child: Text(
                                          "lbl_wallets".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.txtRobotoRegular12.copyWith(
                                            letterSpacing: 0.40,
                                            height: 1.33,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    72.00,
                                  ),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 26,
                                            top: 18,
                                            right: 26,
                                            bottom: 18,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgDashboard,
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    72.00,
                                  ),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 27,
                                            top: 19,
                                            right: 27,
                                            bottom: 19,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgCreditcard18X18,
                                            height: getSize(
                                              18.00,
                                            ),
                                            width: getSize(
                                              18.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    72.00,
                                  ),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 26,
                                            top: 18,
                                            right: 26,
                                            bottom: 18,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgCreditcard20X20,
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    72.00,
                                  ),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 25,
                                            top: 20,
                                            right: 25,
                                            bottom: 20,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgUser,
                                            height: getVerticalSize(
                                              16.00,
                                            ),
                                            width: getHorizontalSize(
                                              22.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        )
    );

  }


}
