import 'controller/request_currency_on_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_drop_down.dart';
import 'package:application1/widgets/custom_icon_button.dart';
import 'package:application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class RequestCurrencyOnScreen extends GetWidget<RequestCurrencyOnController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(616.00),
                        width: size.width,
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: getMargin(bottom: 6),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                                    left: 16,
                                                    top: 7,
                                                    right: 16),
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
                                        Padding(
                                            padding: getPadding(
                                                left: 15, top: 8, right: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      margin: getMargin(
                                                          top: 14, bottom: 14),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .black90099,
                                                              width:
                                                                  getHorizontalSize(
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
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
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
                                                                    style: AppStyle
                                                                        .txtInterMedium16Black900
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.16,
                                                                            height:
                                                                                1.50))),
                                                            Container(
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            126,
                                                                        top: 14,
                                                                        right:
                                                                            18,
                                                                        bottom:
                                                                            14),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .black90099))
                                                          ]))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 16,
                                                    right: 17),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
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
                                                      CustomDropDown(
                                                          width: 256,
                                                          focusNode:
                                                              FocusNode(),
                                                          icon: Container(
                                                              margin: getMargin(
                                                                  left: 30,
                                                                  right: 22),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowleft)),
                                                          hintText:
                                                              "lbl_fastest".tr,
                                                          margin: getMargin(
                                                              left: 33),
                                                          items: controller
                                                              .requestCurrencyOnModelObj
                                                              .value
                                                              .dropdownItemList,
                                                          onChanged: (value) {
                                                            controller
                                                                .onSelected(
                                                                    value);
                                                          })
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 43,
                                                    right: 15),
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
                                        Container(
                                            margin: getMargin(
                                                left: 15, top: 8, right: 15),
                                            decoration: AppDecoration
                                                .outlineBluegray10012
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 15,
                                                          bottom: 15),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgEthereumBadge,
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  16.00))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          232.00),
                                                      margin: getMargin(
                                                          left: 15,
                                                          top: 8,
                                                          bottom: 8),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_eth"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900Dd,
                                                                        fontSize: getFontSize(
                                                                            14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_ethereum"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black90099,
                                                                        fontSize: getFontSize(
                                                                            14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 14,
                                                          top: 23,
                                                          right: 22,
                                                          bottom: 24),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant.imgArrowDownGray,
                                                          height:
                                                              getVerticalSize(
                                                                  7.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  12.00)))
                                                ])),
                                        CustomSearchView(
                                            width: 328,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.searchbarController,
                                            hintText: "lbl_search_currency".tr,
                                            margin: getMargin(
                                                left: 15, top: 12, right: 15),
                                            suffix: Padding(
                                                padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        15.00)),
                                                child: IconButton(
                                                    onPressed: controller
                                                        .searchbarController
                                                        .clear,
                                                    icon: Icon(Icons.clear,
                                                        color: Colors
                                                            .grey.shade600))),
                                            suffixConstraints: BoxConstraints(
                                                minWidth:
                                                    getHorizontalSize(18.00),
                                                minHeight:
                                                    getVerticalSize(18.00))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 12,
                                                    right: 16),
                                                child: Text(
                                                    "lbl_best_options".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular14Black900
                                                        .copyWith(
                                                            letterSpacing: 0.07,
                                                            height: 1.43)))),
                                        Container(
                                            margin: getMargin(
                                                left: 15, top: 8, right: 15),
                                            decoration: AppDecoration
                                                .outlineBluegray10012
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 15,
                                                          bottom: 15),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgEthereumBadge,
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  16.00))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          264.00),
                                                      margin: getMargin(
                                                          left: 15,
                                                          top: 8,
                                                          right: 16,
                                                          bottom: 8),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_eth"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900Dd,
                                                                        fontSize: getFontSize(
                                                                            14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_ethereum"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black90099,
                                                                        fontSize: getFontSize(
                                                                            14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        Container(
                                            margin:
                                                getMargin(left: 15, right: 15),
                                            decoration: AppDecoration
                                                .outlineBluegray10012
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomIconButton(
                                                      height: 32,
                                                      width: 32,
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 12,
                                                          bottom: 12),
                                                      variant: IconButtonVariant
                                                          .FillAmber600,
                                                      shape: IconButtonShape
                                                          .CircleBorder16,
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgBitcoinBadge)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          264.00),
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 8,
                                                          right: 16,
                                                          bottom: 8),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_btc2"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900Dd,
                                                                        fontSize: getFontSize(
                                                                            14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_bitcoin"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black90099,
                                                                        fontSize: getFontSize(
                                                                            14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        Container(
                                            margin:
                                                getMargin(left: 15, right: 15),
                                            decoration: AppDecoration
                                                .outlineBluegray10012
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBL8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 12,
                                                          bottom: 12),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCosmosBadge,
                                                          height:
                                                              getSize(32.00),
                                                          width:
                                                              getSize(32.00))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          264.00),
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 8,
                                                          right: 16,
                                                          bottom: 8),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_usdt"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900Dd,
                                                                        fontSize: getFontSize(
                                                                            14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_tether"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black90099,
                                                                        fontSize: getFontSize(
                                                                            14),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        Container(
                                            height: getVerticalSize(2.00),
                                            width: getHorizontalSize(64.00),
                                            margin: getMargin(
                                                left: 15, top: 10, right: 15),
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
