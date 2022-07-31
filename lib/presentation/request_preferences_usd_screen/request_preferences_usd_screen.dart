import 'controller/request_preferences_usd_controller.dart';
import 'package:application1/core/app_export.dart';
//import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_checkbox.dart';
import 'package:application1/widgets/custom_drop_down.dart';
import 'package:application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RequestPreferencesUsdScreen
    extends GetWidget<RequestPreferencesUsdController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(776.00),
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: getMargin(bottom: 6),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: size.width,
                                                child: Container(
                                                    decoration: AppDecoration
                                                        .fillWhiteA700,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapImgArrowleft();
                                                              },
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 22,
                                                                      top: 18,
                                                                      bottom:
                                                                          18),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgArrowleft,
                                                                      height: getVerticalSize(
                                                                          20.00),
                                                                      width: getHorizontalSize(
                                                                          11.00)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 16,
                                                                      bottom:
                                                                          16),
                                                              child: Text(
                                                                  "lbl_request"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .txtInterMedium16
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.16,
                                                                          height:
                                                                              1.50))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 21,
                                                                      right: 21,
                                                                      bottom:
                                                                          21),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgClose,
                                                                  height:
                                                                      getSize(
                                                                          14.00),
                                                                  width: getSize(
                                                                      14.00)))
                                                        ])))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 27,
                                                    right: 15),
                                                child: Text(
                                                    "msg_choose_preferen".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium14
                                                        .copyWith(
                                                            letterSpacing: 0.10,
                                                            height: 1.71)))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 8,
                                                    right: 15),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getSize(20.00),
                                                          width: getSize(20.00),
                                                          margin: getMargin(
                                                              top: 14,
                                                              bottom: 14),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10.00)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .black90099,
                                                                  width: getHorizontalSize(
                                                                      2.00)))),
                                                      Container(
                                                          decoration: AppDecoration
                                                              .fillGray100
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder8),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 12,
                                                                        bottom:
                                                                            12),
                                                                    child: Text(
                                                                        "lbl_cheapest"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtInterMedium16Black900.copyWith(
                                                                            letterSpacing:
                                                                                0.16,
                                                                            height:
                                                                                1.50))),
                                                                Container(
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            126,
                                                                        top: 14,
                                                                        right:
                                                                            18,
                                                                        bottom:
                                                                            14),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.black90099))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 16,
                                                    right: 15),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 12,
                                                              bottom: 156),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgRefresh,
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00))),
                                                      Container(
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        256.00),
                                                                decoration: AppDecoration
                                                                    .fillGray100
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderTL8),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  12,
                                                                              bottom:
                                                                                  12),
                                                                          child: Text(
                                                                              "lbl_fastest".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium16Black900.copyWith(letterSpacing: 0.16, height: 1.50))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  19,
                                                                              right:
                                                                                  22,
                                                                              bottom:
                                                                                  20),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgArrowdownGray900,
                                                                              height: getVerticalSize(7.00),
                                                                              width: getHorizontalSize(12.00)))
                                                                    ])),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        256.00),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 12,
                                                                        bottom:
                                                                            12),
                                                                decoration: AppDecoration
                                                                    .txtFillGray100
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder8),
                                                                child: Text(
                                                                    "lbl_public_tx"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium16Black900
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.16,
                                                                            height:
                                                                                1.50))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        256.00),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 12,
                                                                        bottom:
                                                                            12),
                                                                decoration: AppDecoration
                                                                    .txtFillGray100
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .txtRoundedBorder8),
                                                                child: Text(
                                                                    "lbl_masked_tx"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterMedium16Black900
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.16,
                                                                            height:
                                                                                1.50))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        256.00),
                                                                decoration: AppDecoration
                                                                    .fillGray100
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderBL8),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  12,
                                                                              bottom:
                                                                                  12),
                                                                          child: Text(
                                                                              "msg_privacy_require".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium16Black900.copyWith(letterSpacing: 0.16, height: 1.50))),
                                                                      Container(
                                                                          height: getSize(
                                                                              20.00),
                                                                          width: getSize(
                                                                              20.00),
                                                                          margin: getMargin(
                                                                              top: 14,
                                                                              right: 18,
                                                                              bottom: 14),
                                                                          decoration: BoxDecoration(color: ColorConstant.black90099))
                                                                    ]))
                                                          ]))
                                                    ]))),
                                        CustomTextFormField(
                                            width: 328,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.priceController,
                                            hintText: "lbl_12_442".tr,
                                            margin: getMargin(
                                                left: 15, top: 5, right: 15),
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 22,
                                                    top: 8,
                                                    right: 22),
                                                child: Text(
                                                    "msg_or_select_curre".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterMedium14
                                                        .copyWith(
                                                            letterSpacing: 0.10,
                                                            height: 1.71)))),
                                        CustomDropDown(
                                            width: 328,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 30, right: 22),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownGray900)),
                                            hintText: "lbl_none".tr,
                                            margin: getMargin(
                                                left: 15, top: 8, right: 9),
                                            variant: DropDownVariant
                                                .OutlineBluegray100,
                                            padding:
                                                DropDownPadding.PaddingAll16,
                                            fontStyle:
                                                DropDownFontStyle.InterMedium16,
                                            alignment: Alignment.center,
                                            items: controller
                                                .requestPreferencesUsdModelObj
                                                .value
                                                .dropdownItemList,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            }),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Obx(() => CustomCheckbox(
                                                alignment: Alignment.center,
                                                text: "msg_notification_on".tr,
                                                iconSize: 18,
                                                value:
                                                    controller.checkbox.value,
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 109,
                                                    right: 15),
                                                onChange: (value) {
                                                  controller.checkbox.value =
                                                      value;
                                                }))),
                                        // CustomButton(
                                        //     width: 328,
                                        //     text: "lbl_continue".tr,
                                        //     margin: getMargin(
                                        //         left: 15, top: 17, right: 15),
                                        //     variant: ButtonVariant.FillGray102,
                                        //     fontStyle: ButtonFontStyle
                                        //         .InterMedium16Black90060,
                                        //     alignment: Alignment.center),
                                        Container(
                                            height: getVerticalSize(2.00),
                                            width: getHorizontalSize(64.00),
                                            margin: getMargin(
                                                left: 15, top: 48, right: 15),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray500,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00))))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
