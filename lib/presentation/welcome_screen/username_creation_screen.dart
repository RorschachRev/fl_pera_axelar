import 'package:application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:application1/widgets/custom_close_icon.dart';

class UsernameCreationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                                child: CustomCloseIcon('/welcome_screen'),
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
                              child: SvgImageView(
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
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child:  ElevatedButton(
                      child: Text('Continue'),
                      onPressed: () {
                        Get.toNamed(AppRoutes.secretPhrasesScreen);
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