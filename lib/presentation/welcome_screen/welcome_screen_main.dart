import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: size.width,
          height: size.height,
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
                        20.00,
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
                              // child: SmoothIndicator(
                              //   offset: 0,
                              //   count: 5,
                              //   axisDirection: Axis.horizontal,
                              //   effect: ScrollingDotsEffect(
                              //     activeDotColor: ColorConstant.black90099,
                              //     dotColor: ColorConstant.black90060,
                              //     dotHeight: getVerticalSize(
                              //       8.00,
                              //     ),
                              //     dotWidth: getHorizontalSize(
                              //       8.00,
                              //     ),
                              //   ),
                              // ),
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
                  Container(
                    padding: EdgeInsets.all(8),
                    child:  ElevatedButton(
                      child: Text('Create new account'),
                      onPressed: () {
                        Get.rootDelegate.toNamed(AppRoutes.usernameCreationScreen);
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                      ),
                    ),
                  ),
                   Container(
                        padding: EdgeInsets.all(8),
                        child: OutlinedButton(
                          child: Text('Import wallet'),
                          onPressed: () {
                            //Navigator.of(context).pushNamed('/import');
                            Get.rootDelegate.toNamed(AppRoutes.importWallet);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    );

  }
}