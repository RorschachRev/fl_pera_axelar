import '../selecting_an_amount_currency_screen/widgets/gridone_item_widget.dart';
import 'controller/selecting_an_amount_currency_controller.dart';
import 'models/gridone_item_model.dart';
import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_button.dart';
import 'package:application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SelectingAnAmountCurrencyScreen
    extends GetWidget<SelectingAnAmountCurrencyController> {
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
                      Container(
                          margin: getMargin(left: 15, top: 32, right: 15),
                          decoration: AppDecoration.outlineBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 8, bottom: 10),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomIconButton(
                                              height: 32,
                                              width: 32,
                                              margin:
                                                  getMargin(top: 8, bottom: 6),
                                              variant: IconButtonVariant
                                                  .FillAmber600,
                                              shape: IconButtonShape
                                                  .CircleBorder16,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgBitcoinbadge)),
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
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                59.00),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text("lbl_0_6".tr,
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
                                                                              1.50)),
                                                              Text("lbl_btc".tr,
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
                                                                              1.50))
                                                            ])),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 2),
                                                            child: Text(
                                                                "lbl_12_442".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular14
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.43))))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        top: 22, right: 20, bottom: 22),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgSort,
                                        height: getVerticalSize(20.00),
                                        width: getHorizontalSize(16.00)))
                              ])),
                      Container(
                          margin: getMargin(left: 15, top: 140, right: 15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 44, top: 6, right: 44),
                                        child: Obx(() => GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent: getVerticalSize(
                                                        36.00),
                                                    crossAxisCount: 3,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(
                                                            93.70),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(
                                                            93.70)),
                                            physics: BouncingScrollPhysics(),
                                            itemCount: controller
                                                .selectingAnAmountCurrencyModelObj
                                                .value
                                                .gridoneItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              GridoneItemModel model = controller
                                                  .selectingAnAmountCurrencyModelObj
                                                  .value
                                                  .gridoneItemList[index];
                                              return GridoneItemWidget(model);
                                            })))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(left: 10, top: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  margin: getMargin(
                                                      top: 6, bottom: 6),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00))),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                                "lbl".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtRobotoRegular30
                                                                    .copyWith()))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(left: 98),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            margin: getMargin(
                                                                top: 6,
                                                                bottom: 6),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            8.00))),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Text(
                                                                          "lbl_0"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style: AppStyle
                                                                              .txtRobotoRegular30
                                                                              .copyWith()))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 48),
                                                            child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            8.00)),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgDelete,
                                                                    height:
                                                                        getVerticalSize(
                                                                            48.00),
                                                                    width: getHorizontalSize(
                                                                        106.00))))
                                                      ]))
                                            ])))
                              ])),
                      CustomButton(
                          width: 328,
                          text: "lbl_continue".tr,
                          margin: getMargin(left: 15, top: 24, right: 15)),
                      Container(
                          height: getVerticalSize(2.00),
                          width: getHorizontalSize(64.00),
                          margin: getMargin(
                              left: 15, top: 48, right: 15, bottom: 6),
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
