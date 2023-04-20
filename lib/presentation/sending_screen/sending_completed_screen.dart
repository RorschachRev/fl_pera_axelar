import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SendingCompletedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getSize(
                    192.00,
                  ),
                  width: getSize(
                    192.00,
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
                            child: SvgImageView(
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
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 70,
                    top: 32,
                    right: 70,
                  ),
                  child: Text(
                    "msg_sending_succesf".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
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
                  Get.parameters['amount'].toString() + " " +
                      Get.parameters['currency']!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium18.copyWith(
                    letterSpacing: 0.15,
                    height: 1.56,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(
                    197.00,
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
                alignment: Alignment.center,
                    child: Container(
                        margin: getMargin(
                          top: 25, left: 10, right: 10
                        ),
                        width: double.infinity,
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
                              child: SvgImageView(
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
              ),
              Container(
                padding: EdgeInsets.all(10),
                child:  ElevatedButton(
                  child: Text('Home'),
                  onPressed: () {
                    Get.rootDelegate.offAndToNamed(AppRoutes.mainScreen);
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}