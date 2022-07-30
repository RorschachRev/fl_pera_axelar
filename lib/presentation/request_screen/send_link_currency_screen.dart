import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_close_icon.dart';
import 'package:flutter/material.dart';

class SendLinkCurrencyScreen extends StatelessWidget {
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
                      height: getVerticalSize(
                        56.00,
                      ),
                      width: size.width,
                      decoration: AppDecoration.fillWhiteA7009f,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                all: 21,
                              ),
                              child: CustomCloseIcon(AppRoutes.mainScreen),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                      top: 20,
                      right: 15,
                    ),
                    child: Text(
                      "msg_your_receiving".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtInterSemiBold20.copyWith(
                        letterSpacing: 0.15,
                        height: 1.40,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      195.00,
                    ),
                    margin: getMargin(
                      left: 15,
                      top: 8,
                      right: 15,
                    ),
                    child: Text(
                      "msg_send_this_link".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtInterRegular14Black900dd.copyWith(
                        letterSpacing: 0.07,
                        height: 1.43,
                      ),
                    ),
                  ),
                  Container(
                    height: getSize(
                      184.00,
                    ),
                    width: getSize(
                      184.00,
                    ),
                    margin: getMargin(
                      left: 15,
                      top: 16,
                      right: 15,
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: ColorConstant.blueA4003d,
                          width: getHorizontalSize(
                            2.00,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                all: 12,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgVector,
                                height: getSize(
                                  160.00,
                                ),
                                width: getSize(
                                  160.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                      top: 8,
                      right: 15,
                    ),
                    child: Text(
                      Get.parameters['amount']! + ' ' + Get.parameters['currency']!,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtInterSemiBold16.copyWith(
                        letterSpacing: 0.16,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 24,
                      right: 15,
                    ),
                    decoration: AppDecoration.outlineBlue300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 8,
                            bottom: 8,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgQrcode,
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 9,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Text(
                            "lbl_send_qr_code".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium16Blue300.copyWith(
                              letterSpacing: 0.16,
                              height: 1.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 15,
                      top: 16,
                      right: 15,
                    ),
                    decoration: AppDecoration.outlineBlue300.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 9,
                            bottom: 8,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgVectorBlue300,
                            height: getSize(
                              22.00,
                            ),
                            width: getSize(
                              22.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Text(
                            "lbl_send_link".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtInterMedium16Blue300.copyWith(
                              letterSpacing: 0.16,
                              height: 1.50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    width: 328,
                    text: "lbl_home".tr,
                    margin: getMargin(
                      left: 15,
                      top: 16,
                      right: 15,
                    ),
                    onTap: () {
                      Get.offAllNamed(AppRoutes.mainScreen);
                    },
                  ),
                  Container(
                    height: getVerticalSize(
                      2.00,
                    ),
                    width: getHorizontalSize(
                      64.00,
                    ),
                    margin: getMargin(
                      left: 15,
                      top: 48,
                      right: 15,
                      bottom: 6,
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