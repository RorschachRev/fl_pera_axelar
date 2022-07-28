import 'controller/sending_completed_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SendingCompletedScreen extends GetWidget<SendingCompletedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                776.00,
              ),
              width: size.width,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: getHorizontalSize(
                        344.00,
                      ),
                      margin: getMargin(
                        left: 10,
                        top: 10,
                        bottom: 6,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getSize(
                                192.00,
                              ),
                              width: getSize(
                                192.00,
                              ),
                              margin: getMargin(
                                left: 68,
                                right: 68,
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.blueA400,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      96.00,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          all: 40,
                                        ),
                                        child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgCheckmark58X78,
                                          height: getVerticalSize(
                                            58.00,
                                          ),
                                          width: getHorizontalSize(
                                            78.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 53,
                                top: 32,
                                right: 53,
                              ),
                              child: Text(
                                "msg_sending_succesf".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold24Black900dd
                                    .copyWith(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 53,
                              right: 53,
                            ),
                            child: Text(
                              "lbl_0_6_etc".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium18.copyWith(
                                letterSpacing: 0.15,
                                height: 1.56,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                197.00,
                              ),
                              margin: getMargin(
                                left: 66,
                                top: 8,
                                right: 66,
                              ),
                              child: Text(
                                "msg_your_payment_is".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtInterRegular16.copyWith(
                                  letterSpacing: 0.16,
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(
                                top: 126,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: getMargin(
                                      top: 25,
                                    ),
                                    decoration:
                                        AppDecoration.fillGray100.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 95,
                                            top: 13,
                                            bottom: 13,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgUpload,
                                            height: getSize(
                                              13.00,
                                            ),
                                            width: getSize(
                                              13.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 11,
                                            top: 8,
                                            right: 91,
                                            bottom: 8,
                                          ),
                                          child: Text(
                                            "lbl_send_checkout".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtInterMedium16Black90099
                                                .copyWith(
                                              letterSpacing: 0.16,
                                              height: 1.50,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: getSize(
                                      25.00,
                                    ),
                                    width: getSize(
                                      25.00,
                                    ),
                                    margin: getMargin(
                                      left: 16,
                                      top: 1,
                                      bottom: 39,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.black900,
                                    ),
                                  ),
                                  Container(
                                    height: getSize(
                                      1.00,
                                    ),
                                    width: getSize(
                                      1.00,
                                    ),
                                    margin: getMargin(
                                      right: 24,
                                      bottom: 64,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.black900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomButton(
                            width: 328,
                            text: "lbl_home".tr,
                            margin: getMargin(
                              top: 8,
                              right: 10,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            height: getVerticalSize(
                              2.00,
                            ),
                            width: getHorizontalSize(
                              64.00,
                            ),
                            margin: getMargin(
                              left: 132,
                              top: 40,
                              right: 132,
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
