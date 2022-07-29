import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:application1/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: getSize(
                      142.00,
                    ),
                    width: getSize(
                      142.00,
                    ),
                    margin: getMargin(
                      left: 16,
                      top: 98,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.blueA400,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          71.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        328.00,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 62,
                        right: 16,
                      ),
                      child: Text(
                        "msg_welcome_to_cro".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium40.copyWith(
                          letterSpacing: 0.25,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        8.00,
                      ),
                      width: getHorizontalSize(
                        87.00,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 72,
                        right: 16,
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
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
                                  dotHeight: getVerticalSize(
                                    8.00,
                                  ),
                                  dotWidth: getHorizontalSize(
                                    8.00,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: getVerticalSize(
                                8.00,
                              ),
                              width: getHorizontalSize(
                                7.00,
                              ),
                              margin: getMargin(
                                left: 32,
                                right: 32,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.black90060,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    4.00,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 328,
                    text: "msg_create_new_acco".tr,
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                    alignment: Alignment.center,
                    onTap: () {
                      Get.toNamed(AppRoutes.usernameCreationScreen);
                    }
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 16,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_import_wallet".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtInterMedium16Black90099.copyWith(
                          letterSpacing: 0.16,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 24,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}