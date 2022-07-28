import 'controller/request_currency_based_controller.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RequestCurrencyBasedScreen
    extends GetWidget<RequestCurrencyBasedController> {
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
                              width: size.width,
                              child: Container(
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                            padding:
                                                getPadding(top: 16, bottom: 16),
                                            child: Text("lbl_request".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtInterMedium16
                                                    .copyWith(
                                                        letterSpacing: 0.16,
                                                        height: 1.50))),
                                        Padding(
                                            padding: getPadding(
                                                top: 21, right: 21, bottom: 21),
                                            child: CommonImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(14.00),
                                                width: getSize(14.00)))
                                      ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 14, top: 38, right: 14),
                              child: Text("lbl_select_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterMedium14.copyWith(
                                      letterSpacing: 0.10, height: 1.71)))),
                      Container(
                          margin: getMargin(left: 14, top: 2, right: 14),
                          decoration: AppDecoration.outlineBlack9001e.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 14, bottom: 14),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 2),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              20.00)),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .img1419515122agen,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00)))),
                                          Container(
                                              margin: getMargin(left: 8),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            right: 10),
                                                        child: Text(
                                                            "lbl_agent_smith"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.10,
                                                                    height:
                                                                        1.71))),
                                                    Text("msg_balance_100".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.07,
                                                                height: 1.43))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        top: 31, right: 14, bottom: 32),
                                    child: CommonImageView(
                                        svgPath:
                                            ImageConstant.imgArrowdownGray900,
                                        height: getVerticalSize(7.00),
                                        width: getHorizontalSize(12.00)))
                              ])),
                      CustomButton(
                          width: 328,
                          text: "lbl_continue".tr,
                          margin: getMargin(left: 14, top: 328, right: 14)),
                      Container(
                          height: getVerticalSize(2.00),
                          width: getHorizontalSize(64.00),
                          margin: getMargin(
                              left: 14, top: 48, right: 14, bottom: 6),
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
