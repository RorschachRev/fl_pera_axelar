import 'controller/selecting_currency_dropdown_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SelectingCurrencyDropdownScreen
    extends GetWidget<SelectingCurrencyDropdownController> {
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              child: Container(
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 22,
                                                    top: 18,
                                                    bottom: 18),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft,
                                                    height:
                                                        getVerticalSize(20.00),
                                                    width: getHorizontalSize(
                                                        11.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 81,
                                                top: 16,
                                                right: 115,
                                                bottom: 16),
                                            child: Text(
                                                "lbl_enter_an_amount".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtInterMedium16
                                                    .copyWith(
                                                        letterSpacing: 0.16,
                                                        height: 1.50)))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 16, top: 16, right: 16),
                              decoration: AppDecoration.outlineBlack9001e12
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: getMargin(
                                            left: 16, top: 8, right: 14),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(8.00))),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 3,
                                                                bottom: 15),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdown,
                                                                height:
                                                                    getVerticalSize(
                                                                        24.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        16.00))),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 16),
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
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              1,
                                                                          right:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_ethereum"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .right,
                                                                          style: AppStyle.txtInterRegular14Black900.copyWith(
                                                                              letterSpacing: 0.07,
                                                                              height: 1.43))),
                                                                  Text(
                                                                      "msg_balance_1_2_et"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .right,
                                                                      style: AppStyle.txtInterMedium14.copyWith(
                                                                          letterSpacing:
                                                                              0.10,
                                                                          height:
                                                                              1.71))
                                                                ]))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 7, bottom: 28),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownGray900,
                                                      height:
                                                          getVerticalSize(7.00),
                                                      width: getHorizontalSize(
                                                          12.00)))
                                            ])),
                                    Container(
                                        margin: getMargin(
                                            left: 16, top: 16, right: 8),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(8.00))),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomIconButton(
                                                  height: 32,
                                                  width: 32,
                                                  margin: getMargin(bottom: 12),
                                                  variant: IconButtonVariant
                                                      .FillAmber600,
                                                  shape: IconButtonShape
                                                      .CircleBorder16,
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgBitcoinbadge)),
                                              Container(
                                                  margin: getMargin(
                                                      left: 8, right: 163),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                right: 10),
                                                            child: Text(
                                                                "lbl_bitcoine"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: AppStyle
                                                                    .txtInterRegular14Black900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43))),
                                                        Text(
                                                            "lbl_balance_1_btc"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: AppStyle
                                                                .txtInterMedium14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.10,
                                                                    height:
                                                                        1.71))
                                                      ]))
                                            ])),
                                    Container(
                                        margin: getMargin(
                                            left: 16,
                                            top: 16,
                                            right: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(8.00))),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 12),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgCut,
                                                      height: getSize(32.00),
                                                      width: getSize(32.00))),
                                              Container(
                                                  margin: getMargin(
                                                      left: 9, right: 150),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                right: 10),
                                                            child: Text(
                                                                "lbl_cosmos".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: AppStyle
                                                                    .txtInterRegular14Black900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43))),
                                                        Text(
                                                            "lbl_balance_0_usdt"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.right,
                                                            style: AppStyle
                                                                .txtInterMedium14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.10,
                                                                    height:
                                                                        1.71))
                                                      ]))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 48, right: 16),
                              child: Text("lbl_0".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular34
                                      .copyWith(letterSpacing: 0.25)))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(328.00),
                          margin: getMargin(left: 16, top: 6, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.black9003d)),
                      Container(
                          height: getSize(1.00),
                          width: getSize(1.00),
                          margin: getMargin(left: 10, top: 267),
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)),
                      Container(
                          height: getSize(25.00),
                          width: getSize(25.00),
                          margin: getMargin(left: 10),
                          decoration:
                              BoxDecoration(color: ColorConstant.black900)),
                      Container(
                          height: getVerticalSize(2.00),
                          width: getHorizontalSize(64.00),
                          margin: getMargin(
                              left: 10, top: 127, right: 10, bottom: 6),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(1.00))))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
