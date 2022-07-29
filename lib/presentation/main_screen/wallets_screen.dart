import 'package:application1/core/app_export.dart';
import 'package:application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class WalletsScreen extends StatelessWidget {
  final controller = Get.put(WalletsController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppDecoration.fillGray100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration:
            AppDecoration.fillWhiteA700.copyWith(
              borderRadius:
              BorderRadiusStyle.customBorderBL8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: AppDecoration
                              .gradientTealA2006dTeal3002d
                              .copyWith(
                            borderRadius: BorderRadiusStyle
                                .roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: getHorizontalSize(
                                    222.00,
                                  ),
                                  margin: getMargin(
                                    left: 16,
                                    top: 16,
                                    right: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment
                                        .end,
                                    mainAxisSize:
                                    MainAxisSize.max,
                                    children: [
                                      Text(
                                        "lbl_100_000".tr,
                                        overflow:
                                        TextOverflow
                                            .ellipsis,
                                        textAlign: TextAlign
                                            .center,
                                        style: AppStyle
                                            .txtInterMedium20
                                            .copyWith(
                                          height: 0.80,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 10,
                                          bottom: 2,
                                        ),
                                        child:
                                        CommonImageView(
                                          svgPath: ImageConstant
                                              .imgMorehoriz,
                                          height:
                                          getVerticalSize(
                                            4.00,
                                          ),
                                          width:
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 8,
                                  right: 16,
                                ),
                                child: Text(
                                  "lbl_2_8_btc".tr,
                                  overflow:
                                  TextOverflow.ellipsis,
                                  textAlign:
                                  TextAlign.center,
                                  style: AppStyle
                                      .txtInterRegular16Black900
                                      .copyWith(
                                    height: 1.00,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  1.00,
                                ),
                                width: getHorizontalSize(
                                  190.00,
                                ),
                                margin: getMargin(
                                  top: 26,
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(
                                      1,
                                      0,
                                    ),
                                    end: Alignment(
                                      0.021951219796567112,
                                      0,
                                    ),
                                    colors: [
                                      ColorConstant
                                          .bluegray101,
                                      ColorConstant
                                          .bluegray10000,
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: getHorizontalSize(
                                    226.00,
                                  ),
                                  margin: getMargin(
                                    left: 16,
                                    top: 25,
                                    right: 16,
                                    bottom: 16,
                                  ),
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
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                        ),
                                        child: Text(
                                          "lbl_wallet_1".tr,
                                          overflow:
                                          TextOverflow
                                              .ellipsis,
                                          textAlign:
                                          TextAlign
                                              .center,
                                          style: AppStyle
                                              .txtInterSemiBold14
                                              .copyWith(
                                            height: 1.14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                        getVerticalSize(
                                          20.00,
                                        ),
                                        width:
                                        getHorizontalSize(
                                          77.00,
                                        ),
                                        decoration:
                                        BoxDecoration(
                                          borderRadius:
                                          BorderRadius
                                              .circular(
                                            getHorizontalSize(
                                              4.00,
                                            ),
                                          ),
                                          border:
                                          Border.all(
                                            color:
                                            ColorConstant
                                                .gray500,
                                            width:
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
                        Container(
                          height: getVerticalSize(
                            144.00,
                          ),
                          width: getHorizontalSize(
                            40.00,
                          ),
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ColorConstant
                                    .black9001e,
                                width: getHorizontalSize(
                                  2.00,
                                ),
                              ),
                              borderRadius:
                              BorderRadius.circular(
                                getHorizontalSize(
                                  8.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment:
                                  Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 13,
                                      top: 40,
                                      right: 13,
                                      bottom: 40,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant
                                          .imgClose,
                                      height: getSize(
                                        14.00,
                                      ),
                                      width: getSize(
                                        14.00,
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
                Padding(
                  padding: getPadding(
                    all: 16,
                  ),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 52,
                              width: 52,
                              margin: getMargin(
                                left: 2,
                                right: 2,
                              ),
                              padding: IconButtonPadding
                                  .PaddingAll18,
                              alignment: Alignment.center,
                              child: CommonImageView(
                                svgPath: ImageConstant
                                    .imgBlueA400,
                              ),
                              onTap: () {
                                Get.toNamed(AppRoutes.sendingScreen);
                              },
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_send".tr,
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .txtInterRegular14Black900dd
                                    .copyWith(
                                  letterSpacing: 0.07,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 52,
                              width: 52,
                              margin: getMargin(
                                left: 2,
                                right: 2,
                              ),
                              padding: IconButtonPadding
                                  .PaddingAll18,
                              alignment: Alignment.center,
                              child: CommonImageView(
                                svgPath: ImageConstant
                                    .imgBlueA40052X52,
                              ),
                              onTap: () {
                                Get.toNamed(AppRoutes.requestPreferencesScreen);
                              },
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_recieve".tr,
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .txtInterRegular14Black900dd
                                    .copyWith(
                                  letterSpacing: 0.07,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 52,
                              width: 52,
                              margin: getMargin(
                                left: 2,
                                right: 2,
                              ),
                              padding: IconButtonPadding
                                  .PaddingAll18,
                              alignment: Alignment.center,
                              child: CommonImageView(
                                svgPath: ImageConstant.img,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_swap".tr,
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .txtInterRegular14Black900dd
                                    .copyWith(
                                  letterSpacing: 0.07,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            CustomIconButton(
                              height: 52,
                              width: 52,
                              margin: getMargin(
                                left: 2,
                                right: 2,
                              ),
                              padding: IconButtonPadding
                                  .PaddingAll14,
                              alignment: Alignment.center,
                              child: CommonImageView(
                                svgPath:
                                ImageConstant.img52X52,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_history".tr,
                                overflow:
                                TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle
                                    .txtInterRegular14Black900dd
                                    .copyWith(
                                  letterSpacing: 0.07,
                                  height: 1.43,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: getMargin(
              top: 8,
            ),
            decoration:
            AppDecoration.fillWhiteA700.copyWith(
              borderRadius:
              BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 8,
                    right: 16,
                  ),
                  child: Text(
                    "lbl_my_coins".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppStyle
                        .txtInterMedium18Black90099
                        .copyWith(
                      letterSpacing: 0.15,
                      height: 1.56,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 16,
                      top: 8,
                      right: 16,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomIconButton(
                          height: 40,
                          width: 40,
                          margin: getMargin(
                            left: 16,
                            top: 8,
                            bottom: 8,
                          ),
                          variant: IconButtonVariant
                              .FillAmber600,
                          shape: IconButtonShape
                              .CircleBorder20,
                          child: CommonImageView(
                            svgPath: ImageConstant
                                .imgBitcoinBadge,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 8,
                            bottom: 28,
                          ),
                          child: Text(
                            "lbl_btc_bitcoin2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtInterRegular14Black90099
                                .copyWith(
                              letterSpacing: 0.10,
                              height: 1.43,
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            94.00,
                          ),
                          margin: getMargin(
                            left: 14,
                            top: 8,
                            bottom: 8,
                          ),
                          child: Text(
                            "msg_2_8_btc_100_000".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtInterRegular14Black900
                                .copyWith(
                              letterSpacing: 0.07,
                              height: 1.43,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 26,
                            top: 34,
                            right: 20,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                              getHorizontalSize(
                                4.00,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment:
                                Alignment.centerLeft,
                                child: Text(
                                  "lbl_4_35".tr,
                                  overflow:
                                  TextOverflow.ellipsis,
                                  textAlign:
                                  TextAlign.center,
                                  style: AppStyle
                                      .txtInterMedium12
                                      .copyWith(
                                    height: 1.00,
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
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 16,
                      right: 16,
                      bottom: 161,
                    ),
                    child: Obx(
                          () => ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller
                            .walletsModelObj
                            .value
                            .walletsItemList
                            .length,
                        itemBuilder: (context, index) {
                          WalletsItemModel model =
                          controller
                              .walletsModelObj
                              .value
                              .walletsItemList[index];
                          return WalletsItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
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
    );
  }
}
class WalletsItemWidget extends StatelessWidget {
  WalletsItemWidget(this.walletsItemModelObj);

  WalletsItemModel walletsItemModelObj;

  var controller = Get.find<WalletsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 12.0,
          bottom: 12.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgEthereumBadge,
                    height: getSize(
                      40.00,
                    ),
                    width: getSize(
                      40.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    80.00,
                  ),
                  margin: getMargin(
                    left: 8,
                  ),
                  child: Text(
                    "lbl_eth_ethereum2".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14Black90099.copyWith(
                      letterSpacing: 0.10,
                      height: 1.43,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    bottom: 20,
                  ),
                  child: Text(
                    "lbl_1_2_eth_0".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14Black900.copyWith(
                      letterSpacing: 0.07,
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: getMargin(
                left: 70,
                top: 26,
                right: 4,
                bottom: 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    4.00,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_02".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtInterMedium12.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class WalletsController extends GetxController {
  Rx<WalletsModel> walletsModelObj = WalletsModel().obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
class WalletsModel {
  RxList<WalletsItemModel> walletsItemList =
  RxList.filled(3, WalletsItemModel());
}
class WalletsItemModel {}
class WalletsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalletsController());
  }
}
