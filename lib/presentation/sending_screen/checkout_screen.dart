import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:application1/widgets/custom_close_icon.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray101,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width,
                    child: Container(
                      decoration: AppDecoration.fillWhiteA700,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 141,
                              top: 16,
                              bottom: 16,
                            ),
                            child: Text(
                              "lbl_checkout".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterMedium16.copyWith(
                                letterSpacing: 0.16,
                                height: 1.50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 106,
                              top: 21,
                              right: 21,
                              bottom: 21,
                            ),
                            child: CustomCloseIcon('/main_screen'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 360,
                    text: Get.parameters['amount'].toString() + " " + ((Get.parameters['currency'] == "Ethereum")?  "ETC"
                        :(Get.parameters['currency'] == "Bitcoin") ? "BTC" : "USDT"),
                    variant: ButtonVariant.FillWhiteA700,
                    padding: ButtonPadding.PaddingAll23,
                    fontStyle: ButtonFontStyle.InterMedium34,
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 8,
                      bottom: 2,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 14,
                            right: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin: getMargin(
                                  top: 2,
                                  bottom: 2,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        right: 10,
                                      ),
                                      child: Text(
                                        "lbl_from2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium16Black900
                                            .copyWith(
                                          letterSpacing: 0.16,
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 16,
                                        right: 10,
                                      ),
                                      child: Text(
                                        "lbl_to2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium16Black900
                                            .copyWith(
                                          letterSpacing: 0.16,
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 16,
                                        right: 5,
                                      ),
                                      child: Text(
                                        "lbl_currency_type".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium16Black900
                                            .copyWith(
                                          letterSpacing: 0.16,
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: getHorizontalSize(
                                          115.00,
                                        ),
                                        margin: getMargin(
                                          top: 12,
                                          right: 1,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              "lbl_sending_fee".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterMedium16Black900
                                                  .copyWith(
                                                letterSpacing: 0.16,
                                                height: 1.50,
                                              ),
                                            ),
                                            Container(
                                              height: getSize(
                                                16.00,
                                              ),
                                              width: getSize(
                                                16.00,
                                              ),
                                              margin: getMargin(
                                                top: 3,
                                                bottom: 3,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.black90099,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 16,
                                        right: 10,
                                      ),
                                      child: Text(
                                        "lbl_total_price".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium16Black900
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                      ),
                                      child: Text(
                                        "lbl_agent_smith".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: AppStyle
                                            .txtInterMedium16Black90099
                                            .copyWith(
                                          letterSpacing: 0.16,
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 16,
                                        ),
                                        child: Text(
                                          "lbl_john_anderson".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                          style: AppStyle
                                              .txtInterMedium16Black90099
                                              .copyWith(
                                            letterSpacing: 0.16,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                        top: 16,
                                      ),
                                      child: Text(
                                        (Get.parameters['currency'] == "Ethereum")?  "ETC"
                                            :(Get.parameters['currency'] == "Bitcoin") ? "BTC" : "USDT",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: AppStyle
                                            .txtInterMedium16Black90099
                                            .copyWith(
                                          letterSpacing: 0.16,
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 16,
                                      ),
                                      child: Text(
                                        "lbl_0_00421_etc".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: AppStyle
                                            .txtInterMedium16Black90099
                                            .copyWith(
                                          letterSpacing: 0.16,
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 16,
                                      ),
                                      child: Text(
                                        "lbl_0_60421".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: AppStyle.txtInterMedium16Black900
                                            .copyWith(
                                          letterSpacing: 0.16,
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          width: 328,
                          text: "lbl_confirm".tr,
                          margin: getMargin(
                            left: 16,
                            top: 333,
                            right: 16,
                          ),
                          onTap: () {
                            Get.toNamed('/sending/completed?amount=${Get.parameters['amount']}&currency=${Get.parameters['currency']}');
                          }
                        ),
                        Container(
                          height: getVerticalSize(
                            2.00,
                          ),
                          width: getHorizontalSize(
                            64.00,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 40,
                            right: 16,
                            bottom: 4,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}