import 'controller/username_creation_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class UsernameCreationScreen extends GetWidget<UsernameCreationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: AppDecoration.fillWhiteA700,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 21,
                              top: 21,
                              bottom: 21,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgClose,
                              height: getSize(
                                14.00,
                              ),
                              width: getSize(
                                14.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 73,
                              top: 24,
                              right: 76,
                              bottom: 24,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    8.00,
                                  ),
                                  width: getHorizontalSize(
                                    56.00,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueA400,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    8.00,
                                  ),
                                  width: getHorizontalSize(
                                    56.00,
                                  ),
                                  margin: getMargin(
                                    left: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    8.00,
                                  ),
                                  width: getHorizontalSize(
                                    56.00,
                                  ),
                                  margin: getMargin(
                                    left: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
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
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 18,
                        top: 17,
                        right: 18,
                      ),
                      child: Text(
                        "msg_how_should_we_c".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold24.copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      328.00,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 8,
                      right: 14,
                    ),
                    child: Text(
                      "msg_this_name_will".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16Black90099.copyWith(
                        letterSpacing: 0.16,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 16,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_username".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium14Black90099.copyWith(
                          letterSpacing: 0.10,
                          height: 1.71,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 16,
                      right: 16,
                    ),
                    decoration: AppDecoration.outlineGray501.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 12,
                              right: 16,
                              bottom: 12,
                            ),
                            child: Text(
                              "lbl_agent_smith".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16.copyWith(
                                letterSpacing: 0.16,
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_viable".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium14TealA700.copyWith(
                            letterSpacing: 0.10,
                            height: 1.71,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                            bottom: 7,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCheckmark10X13,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              13.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    width: 328,
                    text: "lbl_continue".tr,
                    margin: getMargin(
                      left: 16,
                      top: 240,
                      right: 16,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 26,
                      ),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              2.00,
                            ),
                            width: getHorizontalSize(
                              64.00,
                            ),
                            margin: getMargin(
                              left: 148,
                              top: 8,
                              right: 148,
                              bottom: 6,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
