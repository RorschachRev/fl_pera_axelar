import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_floating_edit_text.dart';
import 'package:application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class NamePasswordScreen extends StatelessWidget {
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
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
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
                                    color: ColorConstant.gray100,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.5,
                                      backgroundColor: ColorConstant.gray100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        ColorConstant.blueA400,
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
                        "Create your account",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            24,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  CustomFloatingEditText(
                    width: 328,
                    focusNode: FocusNode(),
                    labelText: 'First name',
                    hintText: 'John ',
                    margin: getMargin(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                  ),
                  CustomFloatingEditText(
                    width: 328,
                    focusNode: FocusNode(),
                    labelText: 'Last name',
                    hintText: 'Smith',
                    margin: getMargin(
                      left: 16,
                      top: 8,
                      right: 16,
                    ),
                  ),
                  CustomFloatingEditText(
                    width: 328,
                    focusNode: FocusNode(),
                    labelText: 'Phone number',
                    hintText: '8 (921) 000 00-00',
                    margin: getMargin(
                      left: 16,
                      top: 8,
                      right: 16,
                    ),
                    textInputAction: TextInputAction.done,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 8,
                        right: 16,
                      ),
                      child: Text(
                        "Password",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.black90099,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.10,
                          height: 1.71,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 16,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.gray500,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            "*********************",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900Dd,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.16,
                              height: 1.50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 16,
                            right: 17,
                            bottom: 17,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgEye,
                            height: getVerticalSize(
                              15.00,
                            ),
                            width: getHorizontalSize(
                              22.00,
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
                          "Strong",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.tealA700,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
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
                            svgPath: ImageConstant.imgCheckmark,
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
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomIconButton(
                          height: 24,
                          width: 24,
                          margin: getMargin(
                            bottom: 16,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCheckbox,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            253.00,
                          ),
                          margin: getMargin(
                            left: 18,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                  'I am 18 years of or order, and I agree\nto ',
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.07,
                                    height: 1.43,
                                  ),
                                ),
                                TextSpan(
                                  text: 'User Agreement',
                                  style: TextStyle(
                                    color: ColorConstant.blueA400,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.07,
                                    height: 1.43,
                                  ),
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: TextStyle(
                                    color: ColorConstant.black900,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.07,
                                    height: 1.43,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(
                                    color: ColorConstant.blueA400,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.07,
                                    height: 1.43,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    width: 328,
                    text: "Continue",
                    margin: getMargin(
                      left: 16,
                      top: 24,
                      right: 16,
                    ),
                    onTap: () {
                      Get.toNamed(AppRoutes.usernameCreationScreen);
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 26,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
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
                              color: ColorConstant.gray501,
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